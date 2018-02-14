$date = Get-Date -UFormat "%m%d%y"

$url = "http://usccb.org/bible/readings/" + $date + ".cfm"
$result = Invoke-WebRequest $url

$readings = $result.AllElements |
	Where Class -eq "bibleReadingsWrapper" |
	Select -First 10 -ExpandProperty innerText 
	
$lines = ($readings -split "\n")

foreach ($line in $lines) {
	if ($line -like "Reading 1*" -or $line -like "Reading 2*" -or $line -like "Gospel*" -or $line -like "Responsorial Psalm*" -or $line -like "Reading 3*") {
		$line
	}
}

Read-Host -Prompt "Press Enter to exit"