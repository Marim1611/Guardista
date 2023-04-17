$PathToFolder = $args[0]
<#
                                        [Description]

Wanna take some intermediate LLVM files without waiting for the whole script to finish?
wanna work with immediate results without interrupting or stopping the very long ps script?
wanna cleanup some space and maybe delete ~3gb of garbage files after each 3 hours to free the precious disk storage?

We have come to solve all your issues :)

just run this script on the absolute path of GarbageOutputFolder inside the root dataset folder
run it like this

./CleanupScript.ps1 "D:\ClassWork\GP\sandbox\GarbageOutput"

and hit enter !

then just traverse to the GarbageOutput folder, and take your LLVM files as you wish :)

remember to take them a copy, DO NOT CUT THEM.
thank you :)
#>


$loc = Get-Location
Set-Location $PathToFolder

$avFiles = Get-ChildItem | Where-Object {($_.Extension -eq ".json") -or ($_.Extension -eq ".bc") -or ($_.Extension -eq ".dsm")}

foreach ($fil in $avFiles)
{
    Remove-Item -fo $fil
}
Set-Location $loc
