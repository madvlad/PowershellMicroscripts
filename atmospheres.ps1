# Plays an ambient song from OoT or Majora's Mask in the background
# Type R to play another random track, or nothing to expose IE and kill script

$ie = New-Object -com "InternetExplorer.Application"

Do {
$atmospheres = @(
"https://www.youtube.com/watch?v=zLjj9DLCArY",
"https://www.youtube.com/watch?v=jlMWSAcQce4",
"https://www.youtube.com/watch?v=XNT2rZRCA48",
"https://www.youtube.com/watch?v=5XNjSmoc-xc",
"https://www.youtube.com/watch?v=Vm5FtMIkWfg")

$idx = Get-Random -Minimum 0 -Maximum 5
$atmosphere = $atmospheres[$idx]
$ie.navigate($atmosphere)
$op = Read-Host "Playing..."
} While ($op -eq "r")

$ie.visible = $true
