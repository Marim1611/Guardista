$rootpath = $args[0]


$orig_location = Get-Location

Set-Location "$rootpath\testcases"
$allCWEFolders = Get-ChildItem -Directory
foreach ($CWEFolder in $allCWEFolders)
{
    Remove-Item "$rootpath\llfiles_$CWEFolder" -Recurse
    New-Item -Path "$rootpath\llfiles_$CWEFolder" -ItemType Directory
    Copy-Item -Path "$rootpath\testcases\$CWEFolder\llfiles\*" -Destination "$rootpath\llfiles_$CWEFolder" -Recurse
}

Set-Location $orig_location