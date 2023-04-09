$BigDataSetRootPath = $args[0]
$RetDecPath = $args[1]




python SingleBinaryprep.py $BigDataSetRootPath $RetDecPath
python LabelToMultiBinaryMapper.py $BigDataSetRootPath $RetDecPath
./irfilescombiner.ps1 $BigDataSetRootPath
#python jsonlabelfilescombiner.py $BigDataSetRootPath



<#
    NOW this is just to delete any ll file that has no corresponding json file, to ensure consistency
    and also delete any json file not having a corresponding ll file
#>

$LLFILESPATH = $BigDataSetRootPath+'\llfiles'
$JSONFILESPATH = $BigDataSetRootPath+'\labeljsonfiles'

$count_Complete_Data_Point = 0
$count_Incomplete_Data_Point = 0

$childrenFiles = Get-ChildItem $LLFILESPATH
$llFiles = $childrenFiles | Where-Object {$_.Extension -eq ".ll"}
$llFiles = $llFiles.Name

$llnames = @()
foreach ($ll in $llFiles)
{
    $llnames+= $ll.SubString(0, $ll.Length - 3)

}
#Write-Host($llnames)


$childrenFiles = Get-ChildItem $JSONFILESPATH
$jsonFiles = $childrenFiles | Where-Object {$_.Extension -eq ".json"}
$jsonFiles = $jsonFiles.Name
$jsonnames = @()
foreach ($js in $jsonFiles)
{
    $jsonnames+= $js.SubString(0, $js.Length - 5)

}
#Write-Host($jsonnames)


foreach ($llname in $llnames)
{
    if($jsonnames -contains $llname)
    {
        $count_Complete_Data_Point++
    }
    else
    {
        $count_Incomplete_Data_Point++
        $item_name_to_remove = $llname+'.ll'
        Remove-Item -Path "$LLFILESPATH/$item_name_to_remove"
    }
}

foreach ($jname in $jsonnames)
{
    if(-not($llnames -contains $jname))
    {
        $count_Incomplete_Data_Point++
        $item_name_to_remove = $jname+'.ll'
        Remove-Item -Path "$JSONFILESPATH/$item_name_to_remove"
    }
}

Write-Host("THE COMPLETE DATA POINTS READY TO BE TRAINED ON ARE : "+$count_Complete_Data_Point)
Write-Host("THE IN-COMPLETE DATA POINTS NOT-READY TO BE TRAINED ON ARE : "+$count_Incomplete_Data_Point)
