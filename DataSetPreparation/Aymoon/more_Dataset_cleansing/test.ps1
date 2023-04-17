$BigDataSetRootPath = $args[0]


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
Write-Host($llnames)


$childrenFiles = Get-ChildItem $JSONFILESPATH
$jsonFiles = $childrenFiles | Where-Object {$_.Extension -eq ".json"}
$jsonFiles = $jsonFiles.Name
$jsonnames = @()
foreach ($js in $jsonFiles)
{
    $jsonnames+= $js.SubString(0, $js.Length - 5)

}
Write-Host($jsonnames)


foreach ($llname in $llnames)
{
    if($jsonnames -contains $llname)
    {
        $count_Complete_Data_Point++
    }
    else
    {
        $count_Incomplete_Data_Point++
    }
}

Write-Host($count_Complete_Data_Point)
Write-Host($count_Incomplete_Data_Point)