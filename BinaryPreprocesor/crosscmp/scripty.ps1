#take file(s) path from args[0]

#README FIRST


<#
    this script is to act as a cross compiler, it takes the folder containing all source files and compiles them all regardless of the language
    output files are written inside output directory inside the passed folder
    if you don't have some packages, no problem, this script will hopefully figure out which packages you lack and install them for you
    currently we compile C, CPP, Python, Fortran files
    
    ENJOY :)
#>



<#
        you should put all your source files in a folder, then pass its absolute path to this script
        so if you put all your source files in folder D:\ClassWork\GP\testpath,
        you run the script by CD to the script's folder then ./scripty.ps1 D:\ClassWork\GP\crosscmp\testpath\test\output

        if you got access permission error follow the following steps:
        1) search for windowsPowershell.exe
        2) open it as administrator
        3) type this command 'Set-ExecutionPolicy RemoteSigned -Scope CurrentUser'
        4) rerun the script
#>


<#
    ARGS:
    1) Input path, whether a file or a folder
    2) Output path
    3) Retdec Path for decompilation
    4) Compiled? (either true if the files are already compiled, else false)
#>





$userCodePath = $args[0]
$ifFolder = Test-Path -Path $userCodePath -PathType Container

$GuardistaOutputPath = $args[1]

$projPath = "$GuardistaOutputPath/source"
$UserFiles = Get-ChildItem $userCodePath


if (Test-Path -Path "$GuardistaOutputPath/source") { Remove-Item -Recurse "$GuardistaOutputPath/source"}
New-Item -ItemType Directory "$GuardistaOutputPath/source"

if($ifFolder){
    if($null -eq $UserFiles){ Write-Host "Directory is empty !, please provide a full directory"}
    else{ foreach ($UserFile in $UserFiles) {Copy-Item -Path $userCodePath/$UserFile -Destination "$projPath/$UserFile" }}
}
else {
    Copy-Item -Path $userCodePath -Destination "$projPath" 
}


$scriptPath = Get-Location
$retdecPath = $args[2]

$Compiled = $args[3]

$os = $Env:os

if($os -eq "Windows_NT")
{
    #your code here for windows
    try{

        if($Compiled -eq "false")
        {

            #check eligibilty of path
            if(-not (Test-Path -Path $projPath -ErrorAction Stop))
            {
                New-Item -ItemType Directory -Path $projPath -ErrorAction Stop | Write-Host "Directory not found, creating a directory, please put your projet files here"
            }

            
            $directoryInfo = Get-ChildItem $projPath | Measure-Object
            if($directoryInfo.count -eq 0)
            {
                Write-Host "Directory is empty, please put your project files in the passed path"
            }

            #Now we know that the directory is eligible

            #check the user has GCC, Python, JVM, JDK
            if ($null -eq (Get-Command "gcc.exe" -ErrorAction SilentlyContinue)) 
            { 
                Write-Host "Unable to find gcc in your PATH, please install it"
                #should auto install gcc
            }
            if ($null -eq (Get-Command "g++.exe" -ErrorAction SilentlyContinue)) 
            { 
                Write-Host "Unable to find gcc in your PATH, please install it"
                #should auto install gcc
            }
            if ($null -eq (Get-Command "python.exe" -ErrorAction SilentlyContinue)) 
            { 
                Write-Host "Unable to find python in your PATH, please install it"
                #should auto install python
            }

            #ensuring pip
            if(-not(py -3 -m ensurepip)){Write-Host "please install pip"}
            


            #ensure pyinstaller
            if ($null -eq (Get-Command "pyinstaller.exe" -ErrorAction SilentlyContinue)) 
            { 
                Write-Host "Unable to find pyinstaller in your PATH, please install it"
                pip install pyinstaller
                #should auto install pyinstaller
            }
            pip install pandas


            $files=Get-ChildItem $projPath
            $pythonFiles = $files | Where-Object {$_.Extension -eq ".py"}
            $pythonFiles = $pythonFiles.Name                                    # All python files

            $CPPFiles = $files | Where-Object {$_.Extension -eq ".cpp"}
            $CPPFiles = $CPPFiles.Name                                          # All cpp files

            $HFiles = $files | Where-Object {$_.Extension -eq ".h"}
            $HFiles = $HFiles.Name                                              # All .h files

            $CFiles = $files | Where-Object {$_.Extension -eq ".c"}
            $CFiles = $CFiles.Name                                              # All C files

            $outputDir = "$GuardistaOutputPath/artifacts"
            
            Remove-Item $outputDir -Recurse -ErrorAction SilentlyContinue
            New-Item -ItemType Directory $outputDir
            

            # Compiling python files to binaries and putting the artifacts inside folder called dist
            if(-not($null -eq $pythonFiles))
            {
                #delete previous files
                Remove-Item ./build -Recurse -ErrorAction SilentlyContinue
                Remove-Item ./dist -Recurse -ErrorAction SilentlyContinue
                Remove-Item ./.spec -Recurse -ErrorAction SilentlyContinue
                
                # I AM ASSUMING HERE THAT THE MAIN PYTHON FILE IS CALLED "main.py"
                foreach ($pyfile in $pythonFiles)
                {
                    $A = Select-String -Pattern "if.*__name__.*==.*__main__" -Path "$projPath/$pyfile"
                    if($A.Matches.Length -ne 0)
                    {
                        Rename-Item -Path "$projPath/$pyfile" -NewName "main.py"
                        break
                    }
                }
                $pythonFiles = Get-ChildItem $projPath | Where-Object {$_.Extension -eq ".py"}
                $pythonFiles = $pythonFiles.Name
                $mainpyFile = "main.py"
                pyinstaller --distpath "$outputDir/dist" -D --clean --workpath "$outputDir/build" --onefile "$projPath/$mainpyFile" -n "binaryex.exe"
            }


            # compiling header files then moving the artifacts to artifacts folder
            if(-not($null -eq $HFiles))
            {
                g++ "$projPath/*.h" -c
                $gchFiles = Get-ChildItem -Path $projPath | Where-Object {$_.Extension -eq ".gch"}
                $gchFiles = $gchFiles.Name
                $gchFiles
                foreach ($itemname in $gchFiles)
                {
                    Move-Item -Path "$projPath/$itemname" -Destination "$outputDir"
                }
                
            }

            #Same with cpp files
            if(-not($null -eq $CPPFiles))
            {
                g++ "$projPath/*.cpp" -c
                $oFiles = Get-ChildItem -Path $projPath | Where-Object {$_.Extension -eq ".o"}
                $oFiles = $oFiles.Name
                $oFiles
                $o2Files = Get-ChildItem | Where-Object {$_.Extension -eq ".o"}
                $o2Files = $o2Files.Name
                $o2Files
                foreach ($itemname in $oFiles)
                {
                    Move-Item -Path "$projPath/$itemname" -Destination "$outputDir"
                }
                foreach ($itemname in $o2Files)
                {
                    Move-Item -Path "./$itemname" -Destination "$outputDir"
                }
            }

            # same with c files
            if(-not($null -eq $CFiles))
            {
                g++ "$projPath/*.c" -c
                $oFiles = Get-ChildItem -Path $projPath | Where-Object {$_.Extension -eq ".o"}
                $oFiles = $oFiles.Name
                $oFiles
                $o2Files = Get-ChildItem | Where-Object {$_.Extension -eq ".o"}
                $o2Files = $o2Files.Name
                $o2Files
                foreach ($itemname in $oFiles)
                {
                    Move-Item -Path "$projPath/$itemname" -Destination "$outputDir"
                }
                foreach ($itemname in $o2Files)
                {
                    Move-Item -Path "./$itemname" -Destination "$outputDir"
                }
            }


            #LINK OBJECTS HERE
            $loc = Get-Location
            Set-Location $outputDir
            g++ "*.o" -o "binaryex.exe"
            Set-Location $loc

            Write-Host "$GuardistaOutputPath\status.txt"
            Set-Content -Path "$GuardistaOutputPath\status.txt" -Value "compiled"
            $printe = Get-Content -Path "$GuardistaOutputPath\status.txt"
            Write-Host $printe

            Write-Host "--------------COMPILING DONE----------------"
            Write-Host "-------------BUILDING LLVM IR---------------"


            if(Get-ChildItem $outputDir | Where-Object {$_.Name -eq "dist"})
            {
                #the compiled code is a python file
                
                python $retdecPath/retdec-decompiler.py "$outputDir\dist\binaryex.exe" -o "$outputDir/UserCode" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info -k
                
            }

            else {
                
                python $retdecPath/retdec-decompiler.py "$outputDir\binaryex.exe" -o "$outputDir/UserCode" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info -k
            }

            #Move the UserCode.ll into LLfiles directory

            if (Test-Path -Path "$GuardistaOutputPath/LLfiles") { Remove-Item -Recurse "$GuardistaOutputPath/LLfiles"}
            New-Item -ItemType Directory "$GuardistaOutputPath/LLfiles"

            Move-Item -Path "$GuardistaOutputPath/artifacts/UserCode.ll" -Destination "$GuardistaOutputPath/LLfiles/UserCode.ll" -ErrorAction SilentlyContinue

            Set-Location $scriptPath

        }

        else {


            $exeFiles = Get-ChildItem "$GuardistaOutputPath/source" | Where-Object {$_.Extension -eq ".exe"}


            #Move the UserCode.ll into LLfiles directory
            if (Test-Path -Path "$GuardistaOutputPath/LLfiles") { Remove-Item -Recurse "$GuardistaOutputPath/LLfiles"}
            New-Item -ItemType Directory "$GuardistaOutputPath/LLfiles"

            
            if (1 -eq $exeFiles.count)
            {
                python $retdecPath/retdec-decompiler.py "$GuardistaOutputPath/source/$exeFiles" -o "$GuardistaOutputPath/LLfiles/UserCode" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info -k
                Remove-Item -Path "$GuardistaOutputPath/source/$exeFiles"
            }
            
            else{
                $cnt = 0
                foreach ($exe in $exeFiles)
                {
                    python $retdecPath/retdec-decompiler.py "$GuardistaOutputPath/source/$exe" -o "$GuardistaOutputPath/LLfiles/UserCode$cnt" --stop-after bin2llvmir --backend-no-opts --backend-no-symbolic-names --backend-strict-fpu-semantics --backend-no-var-renaming --backend-no-compound-operators --backend-no-time-varying-info -k
                    Remove-Item -Path "$GuardistaOutputPath/source/$exeFiles"
                    $cnt = $cnt + 1
                }
            }
            

            Set-Location $scriptPath
            
        }

        


        #Cleaning the LLfiles folder
        $FilesInLLfiles = Get-ChildItem "$GuardistaOutputPath/LLfiles"
        $uselessFiles = $FilesInLLfiles | Where-Object {$_.Extension -ne ".ll"}
        foreach($useless in $uselessFiles)
        {
            Remove-Item "$GuardistaOutputPath/LLfiles/$useless"
        }
        

        Write-Host "$GuardistaOutputPath\status.txt"
        Set-Content -Path "$GuardistaOutputPath\status.txt" -Value "lifted"
        $printe = Get-Content -Path "$GuardistaOutputPath\status.txt"
        Write-Host $printe




    }
    catch {
        throw
    }









}






elseif ($os -eq "Linux") {
    #your code for linux
}