# myip.ps1
$ErrorActionPreference = "Stop"

$apiUrl = "https://ipinfo.io/json"

try {
    $data = Invoke-RestMethod -Uri $apiUrl -Method Get -TimeoutSec 5
} catch {
    Write-Host "Error: Cannot reach IP info service." -ForegroundColor Red
    exit 1
}

$ipv4 = $null
$ipv6 = $null

if ($data.ip -like "*:*") {
    $ipv6 = $data.ip
} else {
    $ipv4 = $data.ip
}

$country = $data.country
$city    = $data.city
$region  = $data.region
$isp     = $data.org
$services = $data.hostname

$mapsLink = "N/A"
if ($data.loc) {
    $locParts = $data.loc -split ","
    if ($locParts.Count -eq 2) {
        $lat = $locParts[0]
        $lon = $locParts[1]
        $mapsLink = "https://www.google.com/maps?q=$lat,$lon"
    }
}

Write-Host "================= Your Public IP Info =================" -ForegroundColor Cyan
Write-Host "IPv4:            $ipv4"
Write-Host "IPv6:            $ipv6"
Write-Host "Country:         $country"
Write-Host "City:            $city"
Write-Host "Region:          $region"
Write-Host "ISP:             $isp"
Write-Host "Services:        $services"
Write-Host "Your location link: $mapsLink"
Write-Host "========================================================" -ForegroundColor Cyan
