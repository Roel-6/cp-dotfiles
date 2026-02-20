#!/bin/bash
# Check if any WireGuard interface is active
ACTIVE_VPN=$(wg show interfaces)

if [ -n "$ACTIVE_VPN" ]; then
    echo "Disconnecting $ACTIVE_VPN..."
    sudo wg-quick down "$ACTIVE_VPN"
else
    sudo wg-quick up $(sudo find /etc/wireguard/ -name "*.conf" | fzf --reverse --height 40% --border --prompt="Select VPN Server > ")
fi
