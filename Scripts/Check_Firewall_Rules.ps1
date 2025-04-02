# Check Firewall Rules
function Get-FirewallRules {
    Get-NetFirewallRule | Where-Object {$_.Enabled -eq "True"} | Select-Object DisplayName, Direction, Action, Protocol, LocalPort, RemotePort
}

Get-FirewallRules