#!/bin/bash
printf "power on \nagent on \ndefault-agent \ndisconnect 7C:96:D2:3A:3D:AE \nquit" | bluetoothctl
pactl set-default-sink alsa_output.usb-SEEED_ReSpeaker_4_Mic_Array__UAC1.0_-00.analog-stereo
systemctl --user restart raspotify.service