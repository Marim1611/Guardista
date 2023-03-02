$analysispath = $args[0]
$binarypath = $args[1]

#analysispath is the path of the code and static analyzer dataset, not the root folder but the data folder, like this D:\ClassWork\Dataset\code_and_static_analyzer\data
#binarypath is the path of the code with binaries dataset, not the root folder but the data folder, like this D:\ClassWork\Dataset\code_binaries\data

#run this script like this ./datasetFolderFinder.ps1 D:\ClassWork\Dataset\code_and_static_analyzer\data D:\ClassWork\Dataset\code_binaries\data
#dont forget to change the path to yours

#saving the orig path so I dont screw the directory of your terminal
$origpath = Get-Location

#getting all folder names from Code+analysis dataset
Set-Location $analysispath
$analysisFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
$analysisFolders = $analysisFolders.Name

#getting all folder names from code+binaries dataset
Set-Location $binarypath
$binaryFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
$binaryFolders = $binaryFolders.Name

#output counter
$counter = 0


############################################ JUST FOR PROGRESS BAR###################################
$totalFolderCount = $analysisFolders.Count
$currentFolderIndex = 0
$percentComplete = 0
#####################################################################################################


#for cleanup purposes
Remove-Item "$origpath/MatchedFolders.txt" -ErrorAction SilentlyContinue


#Complexity of N^2 lol, clean code :)
foreach ($analfolder in $analysisFolders)
{
    foreach ($binfolder in $binaryFolders)
    {
        if(($analfolder -eq $binfolder) -or ($analfolder + "==" -eq $binfolder) -or ($analfolder -eq $binfolder + "=="))
        {
            $counter ++
            #writing line to a file called MatchedFolders.txt
            $analfolder | Out-File -FilePath "$origpath/MatchedFolders.txt" -Append
            break
        }
    }


    ########################################### JUST FOR PROGRESS BAR ###################################
    Write-Progress -Activity "Matching each folder name in code&analysis with folders in code&binaries" -Status "$PercentComplete% of Folder Names checked:" -PercentComplete $PercentComplete
    $currentFolderIndex++
    $percentComplete = [int](($currentFolderIndex / $totalFolderCount) * 100)
    #####################################################################################################
}


#going back to our original path
Set-Location $origpath


Write-Host ($counter)