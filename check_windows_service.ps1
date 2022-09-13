# -- init
param($service_name)
$service_state = "not found"

# -- get service state, format as list, where line > 0 (=no empty lines)
$service_state = Get-Service | Where-Object {$_.Name -EQ $service_name} | Format-List -Property Status | Out-String -Stream | Where { $_.Trim().Length -gt 0} | Out-String -Stream

# -- replace key + colon
$service_state = $service_state -replace '.*: ', ''
if($service_state -EQ "Running") {
    Write-Output("$service_name is running.")
    Exit 0
}
elseif ($service_state -EQ "Stopped") {
    Write-Output("$service_name is stopped.")
    Exit 2
}
else {
    Write-Output("$service_name not found")
    Exit 1
}

