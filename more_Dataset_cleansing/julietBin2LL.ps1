$rootpath = $args[0]
$Compiled = $args[1]
$retdecPath = $args[2]

<#
Remember the 'Juliet Test Suite v1.3' dataset?
we want to extract the llvm ir files from the build artifacts for each test case
so I wrote this script to use RetDec lifter to lift each executable and put the result inside output directory inside each testcase folder
if you haven't compiled the dataset using the compile-all.bat, no problem, just pass 'false' as a second argument

ENJOY :)



args[0] : YOU SHOULD PASS THE PATH OF THE Juliet Test Suite
args[1] : Compiled is just a flag, options are "true" or "false"
args[2] : YOU SHOULD PASS THE PATH OF RETDEC\BIN
run this script like this    "./llextractor.ps1 "D:\ClassWork\GP\C_comp" true "D:\ClassWork\GP\RetDec\bin""
where    "C_comp" is the folder of the compiled dataset
and      "RetDec\bin" is the bin folder of RetDec Tool
#>



if($Compiled -eq "false")
{
    ./compile_all.bat
}



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
            Get-Location
            $avFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".exe"}
            $avFiles = $avFiles.Name
            foreach ($exefile in $avFiles)
            {
                $outputDir = "$rootpath\$folder\$subFolder\output"
                Remove-Item $outputDir -Recurse -ErrorAction SilentlyContinue
                New-Item -ItemType Directory -Path "$rootpath\$folder\$subFolder" -Name output
                python "$retdecPath\retdec-decompiler.py" $exefile -o "$outputDir\output" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info

                #####################################################################
                #                   MARIEM's SCRIPT FOR CFG GOES HERE               #
                #####################################################################
            }
            $counter = $counter +1
        }
        
    }
    else
    {
        Set-Location "$rootpath\$folder"
        $avFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".exe"}
        $avFiles = $avFiles.Name
        foreach ($exefile in $avFiles)
        {
            $outputDir = "$rootpath\$folder\output"
            Remove-Item $outputDir -Recurse -ErrorAction SilentlyContinue
            New-Item -ItemType Directory -Path "$rootpath\$folder\$subFolder" -Name output
            python "$retdecPath\retdec-decompiler.py" "$rootpath\$folder\$exefile" -o "$outputDir\output" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info
            #####################################################################
            #                   MARIEM's SCRIPT FOR CFG GOES HERE               #
            #####################################################################
        }
        $counter = $counter +1
    }


    ###################################### JUST FOR DISPLAYING A PROGRESS BAR #####################
    Write-Progress -Activity "Extracting LLVM files from executables in 'output' folder for each case" -Status "$PercentComplete% of Folders Crawled:" -PercentComplete $PercentComplete
    $currentFolderIndex++
    $percentComplete = [int](($currentFolderIndex / $totalFolderCount) * 100)
    ################################################################################################
    
}




Write-Host($counter)


#finally
Set-Location $origpath

