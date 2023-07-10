$rootpath = $args[0]
$compiled = $args[1]
$retdecPath = $args[2]

<#
This Script is intended to compile and lift the representatives of each CWE subFamily
it just iterates on all folders and compile then lift each folder the same way we compiled the original dataset

it just takes 2 arguments
arg[0] : rootpath to the representative dataset
arg[1] : compiled or not
arg[2] : retdec path
#>


$orig_location = Get-Location

Set-Location "$rootpath\testcases"



$allCWEFolders = Get-ChildItem -Directory

Set-Location $orig_location

foreach ($CWEFolder in $allCWEFolders)
{
    & .\julietBin2LL.ps1 $rootpath\testcases\$CWEFolder $compiled true false true $retdecPath
}


Set-Location "$rootpath\testcases"
$allCWEFolders = Get-ChildItem -Directory
foreach ($CWEFolder in $allCWEFolders)
{
    Remove-Item "$rootpath\llfiles_$CWEFolder" -Recurse
    New-Item -Path "$rootpath\llfiles_$CWEFolder" -ItemType Directory
    Copy-Item -Path "$rootpath\testcases\$CWEFolder\llfiles\*" -Destination "$rootpath\llfiles_$CWEFolder" -Recurse
}

Set-Location $orig_location