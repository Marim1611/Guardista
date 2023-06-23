#take file(s) path from args[0]

#README FIRST


<#
    this script is a cross compiler, it takes the folder containing all source files and compiles them all regardless of the language
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







$projPath = $args[0]
$activate_script_path = $args[1]

$scriptPath = $PSScriptRoot
# $rootPath = (get-item $scriptPath).parent.FullName
$retdecPath = $args[2]

$os = $Env:os

if($os -eq "Windows_NT")
{
    #your code here for windows
    try{

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


        if(-not(py -3 -m ensurepip)){Write-Host "please install pip"}

        $folders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
        $folders = $folders.Name
        $flag = $true
        foreach ($folder in $folders)
        {
            if($folder -eq "GP_Env")
            {
                $flag = $false
            }
        }
        if($flag -eq $true){python -m venv GP_Env}
        
        # ./GP_Env/bin/Activate.ps1
        & $activate_script_path



        if ($null -eq (Get-Command "pyinstaller.exe" -ErrorAction SilentlyContinue)) 
        { 
            Write-Host "Unable to find pyinstaller in your PATH, please install it"
            pip install pyinstaller
            #should auto install pyinstaller
        }
        pip install pandas

        $files=Get-ChildItem $projPath
        $pythonFiles = $files | Where-Object {$_.Extension -eq ".py"}
        $pythonFiles = $pythonFiles.Name

        $CPPFiles = $files | Where-Object {$_.Extension -eq ".cpp"}
        $CPPFiles = $CPPFiles.Name

        $HFiles = $files | Where-Object {$_.Extension -eq ".h"}
        $HFiles = $HFiles.Name

        $CFiles = $files | Where-Object {$_.Extension -eq ".c"}
        $CFiles = $CFiles.Name

        $outputDir = "$projPath/output"
        Remove-Item $outputDir -Recurse -ErrorAction SilentlyContinue
        New-Item -ItemType Directory -Path $projPath -Name output
        

        if(-not($null -eq $pythonFiles))
        {
            #delete previous files
            Remove-Item ./build -Recurse -ErrorAction SilentlyContinue
            Remove-Item ./dist -Recurse -ErrorAction SilentlyContinue
            Remove-Item ./.spec -Recurse -ErrorAction SilentlyContinue
            
            # I AM ASSUMING HERE THAT THE MAIN PYTHON FILE IS CALLED "main.py"
            $mainpyFile = $pythonFiles -eq "main.py"
            #New-Item -ItemType Directory -Path ./output -ErrorAction SilentlyContinue
            pyinstaller --distpath "$outputDir/dist" -D --clean --workpath "$outputDir/build" --onefile "$projPath/$mainpyFile" -n "binaryex.exe"
        }
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
        g++ "$outputDir/*.o" -o "$outputDir/binaryex.exe"


        Write-Host "--------------COMPILING DONE----------------"
        Write-Host "-------------BUILDING LLVM IR---------------"

        if(Get-ChildItem $outputDir | Where-Object {$_.Name -eq "dist"})
        {
            #the compiled code is a python file
            Set-Location $retdecPath
            python retdec-decompiler.py "$outputDir/dist/binaryex.exe" -o "$outputDir/output" --stop-after bin2llvmir
        }

        else {
            Set-Location $retdecPath
            python retdec-decompiler.py "$outputDir/binaryex.exe" -o "$outputDir/output" --stop-after bin2llvmir
        }

        Set-Location $scriptPath





    }
    catch {
        throw
    }









}






elseif ($os -eq "Linux") {
    #your code for linux
}