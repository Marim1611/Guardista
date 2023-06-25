$rootpath = $args[0]
$Compiled = $args[1]
$CompileInd = $args[2]
$specialARG = $args[3]
$GenerateSafeFiles = $args[4]
$retdecPath = $args[5]


<#
Remember the 'Juliet Test Suite v1.3' dataset?
we want to extract the llvm ir files from the build artifacts for each test case
so I wrote this script to use RetDec lifter to lift each executable and put the result inside output directory inside each testcase folder
if you haven't compiled the dataset using the compile-all.bat, no problem, just pass 'false' as a second argument,
if you want to compile each test case individually, pass true as a third argument
if you want to generate safe dataset files, pass true as a fourth argument.
and RetDec's bin path as fifth argument
ENJOY :)
THIS SCRIPT SHOULD BE RUN IN VISUAL STUDIO POWERSHELL, not sure how to open it? open visual studio, from tools then command line, then developer power shell
args[0] : YOU SHOULD PASS THE PATH OF THE Juliet Test Suite
args[1] : Compiled is just a flag, options are "true" or "false"
args[2] : Compile individual, to compile each test case on its own
args[3] : whether your want to generate Safe dataset or not OPTIONS: true   false
args[4] : YOU SHOULD PASS THE PATH OF RETDEC\BIN
run this script like this    "./julietBin2LL.ps1 "D:\ClassWork\GP\juliet" false true true "D:\ClassWork\GP\RetDec\bin""
where    "C_comp" is the folder of the compiled dataset
and      "RetDec\bin" is the bin folder of RetDec Tool
#>


$origPATTH = Get-Location
$rootToDataset = $rootpath


$countCompoundedTestCases = 0
$countNumberOfTestCasesPerCVE = 0


if($Compiled -eq "false")
{
    ############################################################################################################################
    #firstly before compilation edits all .bat files in the testcases folders, so the VC compiler produces their debug info file
    Set-Location "$rootpath\testcases"
    $allFolders = Get-ChildItem -Directory
    foreach( $fold in $allFolders)
    {
        $loc = Get-Location
        Set-Location $fold
        $subsubFolers = Get-ChildItem -Directory
        if($subsubFolers)
        {
            foreach ($ffold in $subsubFolers)
            {
                .$origPATTH\DebugInfoForcer.ps1 $ffold "false"
                Write-Host("$ffold done")
            }
            Set-Location $loc
        }
        else{
            Set-Location $loc
            .$origPATTH\DebugInfoForcer.ps1 $fold "false"
            Write-Host("$fold done")
        }
    }

    ############################################################################################################################
                        #Compiling every CWE family of test cases in a single .exe file containing ALL TEST CASES per this CWE
    if($CompileInd -eq "false")
    {
        Set-Location $rootpath
        $fileContent = Get-Content compile_all.bat
        $ss = 'cl /I"testcasesupport" /W3 /MT /GS  /Zi /RTC1 /bigobj /EHsc /nologo /c "testcasesupport\main.cpp" "testcasesupport\io.c" "testcasesupport\std_thread.c"'
        $fileContent[18] = $ss
        $ss = 'cl /FeTestcases *.obj CWE*.lib /I"testcasesupport" /W3 /MT /GS  /Zi /RTC1 /bigobj /EHsc /nologo'
        $fileContent[21] = $ss
        $fileContent | Set-Content compile_all.bat


        ####################################### EITHER COMPILE BAD FILES OR GOOD FILES ###############################
        if($GenerateSafeFiles -ne "true")
        {./compile_all.bat}
        

    ########################################################################################################3333
                                        #Compile all but produce safe files ONLY
        if($GenerateSafeFiles -eq "true")
        {
            Set-Location "$rootpath\testcases"
            $allFolders = Get-ChildItem -Directory
            foreach( $fold in $allFolders){
                $loc = Get-Location
                Set-Location $fold
                $subsubFolers = Get-ChildItem -Directory
                if($subsubFolers)
                {
                    foreach ($ffold in $subsubFolers)
                    {
                        .$origPATTH\DebugInfoForcer.ps1 $ffold $GenerateSafeFiles
                    }
                    Set-Location $loc
                }
                else{
                    Set-Location $loc
                    .$origPATTH\DebugInfoForcer.ps1 $fold $GenerateSafeFiles
                }}}
            Set-Location $rootpath
            ./compile_all.bat

        Set-Location $origPATTH
    }

    ############################################################################################################################
                                    #Compiling individual test case alone, each .exe file contains ONLY one test case
    if($CompileInd -eq "true")
    {
        if($specialARG -eq "true")
        {
            
            Write-Host("!!!!!!!Iamhere!!!!!!!!!!!!")
            Set-Location $rootpath\testcases
            $allFolders = Get-ChildItem -Directory
            foreach( $fold in $allFolders)
            {
                $loc = Get-Location
                Set-Location "$rootpath\testcases\$fold"
                $subsubFolers = Get-ChildItem -Directory
                if($subsubFolers)
                {
                    foreach ($ffold in $subsubFolers)
                    {
                        Set-Location "$rootpath\testcases\$fold\$ffold"
                        $TestCaseFiles = Get-ChildItem | Where-Object {($_.Extension -eq ".cpp") -or (($_.Extension -eq ".c"))}
                        foreach ($case in $TestCaseFiles)
                        {
                            $countNumberOfTestCasesPerCVE = $countNumberOfTestCasesPerCVE + 1
                            Set-Location "$rootpath\testcases\$fold\$ffold"
                            $filename = $case.Name
                            $casebasename = $case.BaseName
                            $casebasename -match 'CWE[0-9]+_.*_[0-9]+'
                            $testcaseName = $Matches.0
                            if($casebasename.SubString(0, 3) -eq "CWE")
                            {
                                if(($casebasename -match 'CWE[0-9]+_.*_[0-9]+.*(good|bad)(G2G|G2B|B2G|B2B)\.')-or($casebasename -match 'CWE[0-9]+_.*_[0-9]+[a-zA-Z]\.'))
                                {
                                    
                                    $safeBaseName = $casebasename + "Safe"
                                    $filenamewith_Asterix = $testcaseName+"*"+$case.Extension
                                    Write-Host($filenamewith_Asterix)
                                    if($casebasename.SubString(0,3) -eq "CWE")
                                    {
                                        $countCompoundedTestCases = $countCompoundedTestCases+1
                                        $CasePath = Get-Location
                                        Set-Location $rootpath
                                        #cl /Itestcasesupport /DINCLUDEMAIN /Zi /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                        if($GenerateSafeFiles -eq "true"){ #if we specified to generate safe files
                                            cl /Itestcasesupport /DINCLUDEMAIN /DOMITBAD /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$safeBaseName.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                        }else{cl /Itestcasesupport /DINCLUDEMAIN /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"}
                                    }
                                    Write-Host("$ffold done")
                                }
                                else{continue}
                            }
                            else{continue}
                        }
                        Set-Location $rootToDataset
                        $tempFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".obj" -and $_.Name.SubString(0,3) -eq "CWE"}
                        foreach ($tempFile in $tempFiles)
                        {
                            Remove-Item -fo $tempFile
                        }
                    }
                    
                    Set-Location $loc
                }
                else
                {
                    $loc = Get-Location
                    $TestCaseFiles = Get-ChildItem | Where-Object {($_.Extension -eq ".cpp") -or (($_.Extension -eq ".c"))}
                    foreach ($case in $TestCaseFiles)
                    {
                        $countNumberOfTestCasesPerCVE = $countNumberOfTestCasesPerCVE + 1
                        Set-Location $loc
                        $filename = $case.Name
                        $casebasename = $case.BaseName
                        $casebasename -match 'CWE[0-9]+_.*_[0-9]+'
                        $testcaseName = $Matches.0
                        if($casebasename.SubString(0, 3) -eq "CWE")
                        {
                            if(($casebasename -match 'CWE[0-9]+_.*_[0-9]+.*(good|bad)(G2G|G2B|B2G|B2B)\.')-or($casebasename -match 'CWE[0-9]+_.*_[0-9]+[a-zA-Z]\.'))
                            {                            
                                $safeBaseName = $casebasename + "Safe"
                                $filenamewith_Asterix = $testcaseName+"*"+$case.Extension
                                Write-Host($filenamewith_Asterix)
                                if($casebasename.SubString(0,3) -eq "CWE")
                                {
                                    $countCompoundedTestCases = $countCompoundedTestCases + 1
                                    $CasePath = Get-Location
                                    Set-Location $rootpath
                                    #cl /Itestcasesupport /DINCLUDEMAIN /Zi /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                    if($GenerateSafeFiles -eq "true"){ #if we specified to generate safe files
                                        cl /Itestcasesupport /DINCLUDEMAIN /DOMITBAD /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$safeBaseName.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                    }else{cl /Itestcasesupport /DINCLUDEMAIN /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"}
                                }
                                Write-Host("$ffold done")
                            }
                            else{continue}
                        }
                        else{continue}
                        Set-Location $rootToDataset
                        $tempFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".obj" -and $_.Name.SubString(0,3) -eq "CWE"}
                        foreach ($tempFile in $tempFiles)
                        {
                            Remove-Item -fo $tempFile
                        }
                    }
                    Write-Host("$fold done")
                }
            }
            Set-Location $origPATTH
        }
        else
        {

            
        Write-Host("############3Iamhere##############")
        
        Set-Location $rootpath\testcases
        $allFolders = Get-ChildItem -Directory
        foreach( $fold in $allFolders)
        {
            $loc = Get-Location
            Set-Location "$rootpath\testcases\$fold"
            $subsubFolers = Get-ChildItem -Directory
            if($subsubFolers)
            {
                foreach ($ffold in $subsubFolers)
                {
                    Set-Location "$rootpath\testcases\$fold\$ffold"
                    $TestCaseFiles = Get-ChildItem | Where-Object {($_.Extension -eq ".cpp") -or (($_.Extension -eq ".c"))}
                    foreach ($case in $TestCaseFiles)
                    {
                        Set-Location "$rootpath\testcases\$fold\$ffold"
                        $countNumberOfTestCasesPerCVE = $countNumberOfTestCasesPerCVE +1
                        if(($casebasename -match 'CWE[0-9]+_.*_[0-9]+.*(good|bad)(G2G|G2B|B2G|B2B)\.')-or($casebasename -match 'CWE[0-9]+_.*_[0-9]+[a-zA-Z]\.'))
                        {$countCompoundedTestCases = $countCompoundedTestCases+1}
                        $filename = $case.Name
                        $casebasename = $case.BaseName
                        $casebasename -match 'CWE[0-9]+_.*_[0-9]+'
                        $testcaseName = $Matches.0
                        if($casebasename.SubString(0, 3) -eq "CWE")
                        {                            
                                $safeBaseName = $casebasename + "Safe"
                                $filenamewith_Asterix = $testcaseName+"*"+$case.Extension
                                Write-Host($filenamewith_Asterix)
                                if($casebasename.SubString(0,3) -eq "CWE")
                                {
                                    $countCompoundedTestCases = $countCompoundedTestCases + 1
                                    $CasePath = Get-Location
                                    Set-Location $rootpath
                                    #cl /Itestcasesupport /DINCLUDEMAIN /Zi /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                    if($GenerateSafeFiles -eq "true"){ #if we specified to generate safe files
                                        cl /Itestcasesupport /DINCLUDEMAIN /DOMITBAD /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$safeBaseName.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                    }else{cl /Itestcasesupport /DINCLUDEMAIN /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"}
                                }
                                Write-Host("$ffold done")
                        }else{continue}
                    }
                    Set-Location $rootToDataset
                    $tempFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".obj" -and $_.Name.SubString(0,3) -eq "CWE"}
                    foreach ($tempFile in $tempFiles)
                    {
                        Remove-Item -fo $tempFile
                    }
                }
                
                Set-Location $loc
            }
            else
            {
                $loc = Get-Location
                $TestCaseFiles = Get-ChildItem | Where-Object {($_.Extension -eq ".cpp") -or (($_.Extension -eq ".c"))}
                foreach ($case in $TestCaseFiles)
                {
                    $countNumberOfTestCasesPerCVE = $countNumberOfTestCasesPerCVE +1
                    Set-Location $loc
                    $filename = $case.Name
                    $casebasename = $case.BaseName
                    $casebasename -match 'CWE[0-9]+_.*_[0-9]+'
                    $testcaseName = $Matches.0
                    if($casebasename.SubString(0, 3) -eq "CWE")
                    {         
                                if(($casebasename -match 'CWE[0-9]+_.*_[0-9]+.*(good|bad)(G2G|G2B|B2G|B2B)\.')-or($casebasename -match 'CWE[0-9]+_.*_[0-9]+[a-zA-Z]\.'))
                                {$countCompoundedTestCases = $countCompoundedTestCases+1}                   
                                $safeBaseName = $casebasename + "Safe"
                                $filenamewith_Asterix = $testcaseName+"*"+$case.Extension
                                Write-Host($filenamewith_Asterix)
                                if($casebasename.SubString(0,3) -eq "CWE")
                                {
                                    $countCompoundedTestCases = $countCompoundedTestCases + 1
                                    $CasePath = Get-Location
                                    Set-Location $rootpath
                                    #cl /Itestcasesupport /DINCLUDEMAIN /Zi /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                    if($GenerateSafeFiles -eq "true"){ #if we specified to generate safe files
                                        cl /Itestcasesupport /DINCLUDEMAIN /DOMITBAD /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$safeBaseName.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"
                                    }else{cl /Itestcasesupport /DINCLUDEMAIN /Zi /EHsc /Fe"$rootpath\testcases\$fold\$ffold\$casebasename.exe" testcasesupport\io.c testcasesupport\std_thread.c "$CasePath\$filenamewith_Asterix"}
                                }
                                Write-Host("$ffold done")
                    }else{continue}
                    Write-Host("$ffold done")
                    Set-Location $rootToDataset
                    $tempFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".obj" -and $_.Name.SubString(0,3) -eq "CWE"}
                    foreach ($tempFile in $tempFiles)
                    {
                        Remove-Item -fo $tempFile
                    }
                }
                Write-Host("$fold done")
            }
        }
        Set-Location $origPATTH
    }
}
}


$llfilesfolder = "$rootpath\llfiles"
$GarbageOutputfolder= "$rootpath\GarbageOutput"
if(Test-Path -Path $llfilesfolder){
    Remove-Item $llfilesfolder -Recurse
    New-Item -Path $llfilesfolder -ItemType Directory}
else {New-Item -Path $llfilesfolder -ItemType Directory}
if(Test-Path -Path $GarbageOutputfolder){
    Remove-Item $GarbageOutputfolder -Recurse
    New-Item -Path $GarbageOutputfolder -ItemType Directory}
else {New-Item -Path $GarbageOutputfolder -ItemType Directory}


$rootToDataset = $rootpath
$rootpath = $rootpath + "\testcases"


#we don't want to mess up the path for your terminal, so we will return to the original path once we finish this script.
$origpath = Get-Location

Set-Location $rootpath

$counter = 0


$avFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
$avFolders = $avFolders.Name


###################################### JUST FOR DISPLAYING A PROGRESS BAR #####################
$totalFolderCount = $avFolders.Count
$currentFolderIndex = 0
$percentComplete = 0
###############################################################################################



foreach ($folder in $avFolders)
{
    Set-Location "$rootpath\$folder"
    Get-Location
    if(Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"})
    {
        $avSubFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
        $avSubFolders = $avSubFolders.Name
        foreach ($subFolder in $avSubFolders)
        {
            Set-Location "$rootpath\$folder\$subFolder"
            $avFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".exe"}
            $avFiles = $avFiles.Name
            foreach ($exefile in $avFiles)
            {
                $llname_without_ext = $exefile.SubString(0, $exefile.Length - 4)
                $pdb_file = "$llname_without_ext.pdb"

                if(Test-Path -Path ./$pdb_file)
                {
                    python "$retdecPath\retdec-decompiler.py" $exefile -p ./$pdb_file -o "$GarbageOutputfolder\$llname_without_ext" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-no-compound-operators --backend-no-time-varying-info
                }
                else{
                    python "$retdecPath\retdec-decompiler.py" $exefile -o "$GarbageOutputfolder\$llname_without_ext" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-no-compound-operators --backend-no-time-varying-info
                }


                

                $counter = $counter +1
                #####################################################################
                #                   MARIEM's SCRIPT FOR CFG GOES HERE               #
                #####################################################################
            }
            #$counter = $counter +1
        }
        
    }
    else
    {
        Set-Location "$rootpath\$folder"
        $avFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".exe"}
        $avFiles = $avFiles.Name
        foreach ($exefile in $avFiles)
        {
            $llname_without_ext = $exefile.SubString(0, $exefile.Length - 4)
            $pdb_file = "$llname_without_ext.pdb"
            if(Test-Path -Path ./$pdb_file){
                python "$retdecPath\retdec-decompiler.py" $exefile -p ./$pdb_file -o "$GarbageOutputfolder\$llname_without_ext" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info
            }
            else{
                python "$retdecPath\retdec-decompiler.py" $exefile -o "$GarbageOutputfolder\$llname_without_ext" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info
            }
            $counter = $counter +1




            #####################################################################
            #                   MARIEM's SCRIPT FOR CFG GOES HERE               #
            #####################################################################
        }
        #$counter = $counter +1
    }


    ###################################### JUST FOR DISPLAYING A PROGRESS BAR #####################
    Write-Progress -Activity "Extracting LLVM files from executables in 'output' folder for each case" -Status "$PercentComplete% of Folders Crawled:" -PercentComplete $PercentComplete
    $currentFolderIndex++
    $percentComplete = [int](($currentFolderIndex / $totalFolderCount) * 100)
    ################################################################################################
    
}


$loc = Get-Location
Set-Location $GarbageOutputfolder
$llfilesinOutput = Get-ChildItem | Where-Object {$_.Extension -eq ".ll"}
$llfilesinOutput = $llfilesinOutput.Name
foreach($ff in $llfilesinOutput){
    Copy-Item -Path "./$ff"  -Destination "../llfiles/$ff"
}
Set-Location $loc
Remove-Item $GarbageOutputfolder -Recurse





Write-Host("total number of LL files: $counter")
Write-Host("number of all files for this CVE: $countNumberOfTestCasesPerCVE")
Write-Host("Compounded TestCases out of them: $countCompoundedTestCases")

#finally
Set-Location $origpath

#python .\ManifestParser.py $rootToDataset false