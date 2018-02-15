# Stupid simple pomodoro timer. Put it in a terminal and make it as small as you want. No loud beeping or light flashing.

$pomCount = 0;

Do
{
	Write-Host "Pomodoros completed today: " $pomCount
	$op = Read-Host "1 - Start Pomodoro | 2 - Start Short Break | 3 - Start Long Break | 4 - Quit`r`n"
	
	if ($op -eq "1") {
		Write-Host $op
		for ($i=1500; $i -gt 0; $i--) {
			Clear-Host
			Write-Host $i " seconds left."
			Start-Sleep -Seconds 1
		}
		$pomCount++
	} elseif ($op -eq "2") {
		for ($i=300; $i -gt 0; $i--) {
			Clear-Host
			Write-Host $i " seconds left."
			Start-Sleep -Seconds 1
		}
	} elseif ($op -eq "3") {
		for ($i=900; $i -gt 0; $i--) {
			Clear-Host
			Write-Host $i " seconds left."
			Start-Sleep -Seconds 1
		}
	}
	
	Clear-Host
} While ($op -ne "4")