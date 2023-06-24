$path = $args[0] #path to test case folder
$GenerateSafe = $args[1]

$origpath = Get-Location

Set-Location $path
$batFile = Get-ChildItem | Where-Object {$_.Extension -eq ".bat"}
$batFile = $batFile.Name
$fileContent = Get-Content $batFile

#line 11, col 69
$line_11 = $fileContent[10]
if($GenerateSafe -eq "true")
{
    $line_11 = 'cl /I"..\..\testcasesupport" /W3 /MT /GS /RTC1 /bigobj /EHsc /nologo /DOMITBAD  /Zi /c main.cpp CWE*.cpp CWE*.c ..\..\testcasesupport\io.c ..\..\testcasesupport\std_thread.c'
}else{
    $line_11 = 'cl /I"..\..\testcasesupport" /W3 /MT /GS /RTC1 /bigobj /EHsc /nologo  /Zi /c main.cpp CWE*.cpp CWE*.c ..\..\testcasesupport\io.c ..\..\testcasesupport\std_thread.c'
}

$fileContent[10] = $line_11



#line 13, col 71
$line_13 = $fileContent[12]
#$line_13 = $line_13.Insert(71, " /Zi ")
if($GenerateSafe -eq "true")
{
    $line_13 = $line_13.replace("/W3 /MT /GS /RTC1 /DOMITBAD /bigobj /EHsc /nologo", "/W3 /MT /GS /RTC1 /bigobj /Zi /EHsc /nologo")
    $line_13 = $line_13.replace(" *.obj", "Safe *.obj")
}else{
    $line_13 = $line_13.replace("/W3 /MT /GS /RTC1 /bigobj /EHsc /nologo", "/W3 /MT /GS /RTC1 /bigobj /Zi /EHsc /nologo")
}

$fileContent[12] = $line_13
$fileContent | Set-Content $batFile

Set-Location $origpath