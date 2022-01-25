#!/bin/bash
printf "power on \nagent on \ndefault-agent \nconnect 7C:96:D2:3A:3D:AE \nquit" | bluetoothctl
sleep 7s
pactl set-default-sink bluez_sink.7C_96_D2_3A_3D_AE.a2dp_sink
systemctl --user restart raspotify.service