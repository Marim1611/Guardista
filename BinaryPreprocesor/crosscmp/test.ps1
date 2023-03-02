$folderpath = $args[0]


if(Get-Command "pyinstaller.exe")
{
    Write-Host "true"
}

Get-Command -Name "pyinstaller.exe"

pip install pyinstaller


$files=Get-ChildItem .\testpath
$pythonFiles = $files | Where-Object {$_.Extension -eq ".py"}

$HFiles = $files | Where-Object {$_.Extension -eq ".jvm"}
$HFiles = $HFiles.Name
#$files

$pythonFiles = $pythonFiles.Name -eq "pypyp.py"
$pythonFiles
#$CPPfiles
$Hfiles
#$Cfiles

if($null -eq $pythonFiles)
{
    Write-Host "not found"
}
$folders = ls | Where-Object {$_.Attributes -eq "Directory"}
$folders = $folders.Name

$code = Get-Content -Path D:\ClassWork\GP\crosscmp\testpath\CWE23_Relative_Path_Traversal__char_connect_socket_fopen_02.cpp

$breakf = $true
$vulnLine = ""
foreach($line in $code)
{
    $vulnLine = $line
    if(-not($breakf -eq $true))
    {
        $outLine = $code
        Add-Content "$folderpath\labels.txt" $vulnLine
        $breakf = $true
    }
    if($line -match '\/\* POTENTIAL FLAW:.*\*\/' -AND $breakf)
    {
        $breakf = $false
    }
}
#$matc = $code -match '\/\* POTENTIAL FLAW:.*\*\/\s*[\r\n]*\t*.*'



#$fir.GetType().Name


$code = "                wsaDataInit = 1;
#endif
                /* POTENTIAL FLAW: Read data using a connect socket */
                connectSocket = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
                if (connectSocket == INVALID_SOCKET)
                {
                    break;
                }
                memset(&service, 0, sizeof(service));
                service.sin_family = AF_INET;
"
$matc = $code -match '\/\* POTENTIAL FLAW:.*\*\/\s*[\r\n]*\t*.*'

#$Matches


