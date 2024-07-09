function Month-Name($timeStamp) { #Function accepts $timeStamp variable and returns string value to $timeName value
    $timeName = 'TBD'
    if ($timeStamp -eq 1) {
        $timeName = "Jan"
    }
    elseif ($timeStamp -eq 2) {
        $timeName = "Feb"
    }
    elseif ($timeStamp -eq 3) {
        $timeName = "March"
    }
    elseif ($timeStamp -eq 4) {
        $timeName = "April"
    }
    elseif ($timeStamp -eq 5) {
        $timeName = "May"
    }
    elseif ($timeStamp -eq 6) {
        $timeName = "June"
    }
    elseif ($timeStamp -eq 7) {
        $timeName = "July"
    }
    elseif ($timeStamp -eq 8) {
        $timeName = "Aug"
    }
    elseif ($timeStamp -eq 9) {
        $timeName = "Sept"
    }
    elseif ($timeStamp -eq 10) {
        $timeName = "Oct"
    }
    elseif ($timeStamp -eq 11) {
        $timeName = "Nov"
    }
    elseif ($timeStamp -eq 12) {
        $timeName = "Dec"
    }
    return $timeName
}

#//////////////////////////////////////////////////////////////////////  
#Generating New folder in new Directory and/or transfering files to it

$timeStamp = (Get-Date).Month
$yearStamp = (Get-Date).Year
$dayStamp = (Get-Date).Day
$fullMonth = Month-Name($timeStamp)
$folderName = "$FullMonth" + " " + "$dayStamp" + " " + "$yearStamp"

$getFiles = Get-Item "C:\Users\17042\Videos\Valorant\*.mp4"
$numFiles = $getFiles.Count

If ($numFiles -gt 4) {
    If (Test-Path -Path Z:\Valorant\$folderName) {
        Move-Item -Path C:\Users\17042\Videos\Valorant\*.mp4 -Destination Z:\Valorant\$folderName
    }
    else {
        New-Item -Path Z:\Valorant\$folderName -ItemType Directory
        Move-Item -Path C:\Users\17042\Videos\Valorant\*.mp4 -Destination Z:\Valorant\$folderName
    }
}
else{
Write-Host "Not enough files"
Exit
}

#//////////////////////////////////////////////////////////////////////