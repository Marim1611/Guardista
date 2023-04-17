$BigDataSetRootpath = $args[0]
$OneBinaryRootpath = $BigDataSetRootpath+'\OneBinary'
$MultiBinaryRootpath = $BigDataSetRootpath +'\MultiBinaries'

$OrigPath = Get-Location


$LLFILESPATH = "$BigDataSetRootpath\llfiles"
$JSONFILESPATH = "$BigDataSetRootpath\labeljsonfiles"


<#
    args[0] : the root path to the dataset which contains folders 'OneBinary' and 'MultiBinaries'


    THIS script takes the root folder of the dataset which contains the folders 'OneBinary' and 'MultiBinaries'
    then goes to all folders, take the LLVM files, put them all inside an outside folder called "llfiles".
    then goes to all folders again, take all output.json, renames them according to the corresponding llvm file, then put them inside an
    outside folder called "labeljsonfiles".

    what do we do to the multibinary files? where the output.json has multiple labels for multiple files? how do we segment the labels for each
    llvm file only?
    ez, I made another script "jsonlabelfilescombiner.py" that solves this problem by splitting the json containing the multiple labels for
    multiple ll files, into multiple json file, each is associated with ONLY ONE LLVM FILE and also carries its name for ease of use.
#>













Set-Location $BigDataSetRootpath



#make a new directory 'llfiles'
if(Test-Path -Path $LLFILESPATH)
{
    Remove-Item $LLFILESPATH -Recurse
    
    New-Item -Path $LLFILESPATH -ItemType Directory
}
else {
    New-Item -Path $LLFILESPATH -ItemType Directory
}


#make a new directory 'labeljsonfiles'

if(Test-Path -Path $JSONFILESPATH)
{
    Remove-Item $JSONFILESPATH -Recurse
    
    New-Item -Path $JSONFILESPATH -ItemType Directory
}
else {
    New-Item -Path $JSONFILESPATH -ItemType Directory
}







<#
    FIRST, traverse the One Binary Dataset
#>

Set-Location $OneBinaryRootpath

$TestCasesFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
$TestCasesFolders = $TestCasesFolders.Name

#for each test case folder, take its llvm file, and put it in llfiles directory
foreach ($TestFolder in $TestCasesFolders)
{
    Set-Location $TestFolder

    if(Test-Path "llvmout")
    {
        Set-Location 'llvmout'
    }
    
    $childrenFiles = Get-ChildItem ./
    $llFiles = $childrenFiles | Where-Object {$_.Extension -eq ".ll"}
    $llFiles = $llFiles.Name
    foreach ($ll in $llFiles)
    {
        if(Test-Path "./$ll")
        {
            Copy-Item -Path "./$ll" -Destination $LLFILESPATH
            Write-Host($ll)
            $llname_without_ext = $ll.SubString(0, $ll.Length - 3)
            Write-Host($llname_without_ext)


            <#
                this block also takes the output.json or report.json, renames them according to the associated LLVM files
                then put it in the labeljsonfiles directory
            #>
            if(Test-Path "../output.json")
            {
                Write-Host("$JSONFILESPATH\$llname_without_ext.json")
                Copy-Item -Path "../output.json"  -Destination "$JSONFILESPATH\$llname_without_ext.json"
            }
            elseif (Test-Path "../report.json") {
                Copy-Item -Path "../report.json"  -Destination "$JSONFILESPATH\$llname_without_ext.json"
            }
            else
            {
                Write-Host ("No report.json found")
            }
            #############################################################################################    
        }
    }
    Set-Location $OneBinaryRootpath
}




<#
    Second, traverse the Multi Binaries Dataset
#>



Set-Location $MultiBinaryRootpath

$TestCasesFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
$TestCasesFolders = $TestCasesFolders.Name


foreach ($TestFolder in $TestCasesFolders)
{
    Set-Location $TestFolder

    

    if(Test-Path "llvmout")
    {
        Set-Location 'llvmout'
    }
    
    $childrenFiles = Get-ChildItem ./
    $llFiles = $childrenFiles | Where-Object {$_.Extension -eq ".ll"}
    $llFiles = $llFiles.Name
    foreach ($ll in $llFiles)
    {

        <#  
            just copy the ll files into the folder containing all the ll files to be ready to be passed to CFG_extractor
        #>


        if(Test-Path -Path "./$ll")
        {
            Copy-Item -Path "./$ll" -Destination $LLFILESPATH
        }
    }
    Set-Location $MultiBinaryRootpath
}




Set-Location $OrigPath


$BigDataSetRootpath_python_friendly = $BigDataSetRootpath.Replace('\', '/')
#Write-Host($BigDataSetRootpath_python_friendly)

#call the python script that handles the multibinary json files (splits each output.json to multiple ones for each llvm file)
python jsonlabelfilescombiner.py $BigDataSetRootpath_python_friendly















