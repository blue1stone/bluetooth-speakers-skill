#!/bin/bash
printf "power on \nagent on \ndefault-agent \nconnect 7C:96:D2:3A:3D:AE \nquit" | bluetoothctl
sleep 7s

#pactl set-default-sink bluez_sink.7C_96_D2_3A_3D_AE.a2dp_sink
# Activate Pulseaudio noise cancellation
pactl unload-module module-echo-cancel
pactl load-module module-echo-cancel
sleep 2s
pactl set-default-sink bluez_sink.7C_96_D2_3A_3D_AE.a2dp_sink.echo-cancel
pactl set-default-source alsa_input.usb-SEEED_ReSpeaker_4_Mic_Array__UAC1.0_-00.analog-mono.echo-cancel

systemctl --user restart raspotify.service