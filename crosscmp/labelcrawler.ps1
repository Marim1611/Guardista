$folderpath = $args[0]

$origpath = Get-location

Set-Location $folderpath

$caseCounter = 0

$avFolders = Get-ChildItem | Where-Object {$_.Attributes -eq "Directory"}
$avFolders = $avFolders.Name -eq "testcases"
$prevLoc = Get-location
Set-Location "$prevLoc\$avFolders" -ErrorAction Stop

$avFolders = Get-ChildItem | Where-Object{$_.Attributes -eq "Directory"}
$avFolders = $avFolders.Name 


$prevLoc = Get-Location

if(Get-ChildItem | Where-Object {$_.Name} -eq "labels.txt")
{
    Remove-Item "$folderpath\labels.txt"
    
    New-Item "$folderpath\labels.txt"
}
else {
    New-Item "$folderpath\labels.txt"
}
Add-Content "$folderpath\labels.txt" "hello"

foreach ($folder in $avFolders)
{
    Set-Location "$prevLoc\$folder"
    
    
    $childrenFiles = Get-ChildItem ./
    $recfolders = $childrenFiles | Where-Object{$_.Attributes -eq "Directory"}
    $recfolders = $recfolders.Name
    if($null -eq $recfolders) #meaning the folder contains code files only with no other subfolders
    {
        #open each file and do the regex here

        $codeFiles = $childrenFiles | Where-Object {$_.Extension -eq ".c"}
        $codeFiles += $childrenFiles | Where-Object {$_.Extension -eq ".cpp"}
        $codeFiles += $childrenFiles | Where-Object {$_.Extension -eq ".h"}
        $codeFiles = $codeFiles.Name

        foreach ($code in $codeFiles)
        {
            $caseCounter = $caseCounter + 1
            

            <#
             

        ###################THIS REGEX SHOULD BE MODIFIED TO CAPTUE THE NEXT LINE, NOT JUST THE COMMENTED LINE ###############################
            $matc = $codetext -match '\/\* POTENTIAL FLAW:.*\*\/\s*[\r\n]*\t*.*'
            Add-Content "$folderpath\labels.txt" $matc

            #>
           
            $codetext = Get-Content $code          
            $breakf = $true
            $vulnLine = ""
            foreach($line in $codetext)
            {
                $vulnLine = $line
                if(-not($breakf -eq $true))
                {
                    $outLine = $code
                    $outLine += ": "
                    $outLine += $vulnLine.Trim()
                    Add-Content "$folderpath\labels.txt" $outLine
                    #Write-Host $outLine
                    $breakf = $true
                }
                if($line -match '\/\* POTENTIAL FLAW:.*\*\/' -AND $breakf)
                {
                    $breakf = $false
                }
            }
            
        }
        


    }
    
    else {
        foreach($subfolder in $recfolders)
        {
            Set-Location "$prevLoc\$folder\$subfolder"
            
            $codeFiles = Get-ChildItem | Where-Object {$_.Extension -eq ".c"}
            $codeFiles += Get-ChildItem | Where-Object {$_.Extension -eq ".cpp"}
            $codeFiles += Get-ChildItem | Where-Object {$_.Extension -eq ".h"}
            $codeFiles = $codeFiles.Name

            foreach ($code in $codeFiles)
            {
                $caseCounter = $caseCounter + 1
                

                <#
                
                $codetext = Get-Content $code

                
    ###################THIS REGEX SHOULD BE MODIFIED TO CAPTUE THE NEXT LINE, NOT JUST THE COMMENTED LINE ###############################
                $matc = $codetext -match '\/\* POTENTIAL FLAW:.*\*\/\s*[\r\n]*\t*.*'
                Add-Content "$folderpath\labels.txt" $matc
                #>

                $codetext = Get-Content $code
                $breakf = $true
                $vulnLine = ""
                foreach($line in $codetext)
                {
                    $vulnLine = $line
                    if(-not($breakf -eq $true))
                    {
                        $outLine = $code
                        $outLine += ": "
                        $outLine += $vulnLine.Trim()
                        Add-Content "$folderpath\labels.txt" $outLine
                        #Write-Host $outLine
                        $breakf = $true
                    }
                    if($line -match '\/\* POTENTIAL FLAW:.*\*\/' -AND $breakf)
                    {
                        $breakf = $false
                    }
                }
            }
            

            Set-Location "$prevLoc\$folder"
        }
    }
    
    Set-Location $prevLoc
}

Write-Host "I crawled $caseCounter Files"

Set-Location $origpath

