#!/bin/bash
printf "power on \nagent on \ndefault-agent \ndisconnect 7C:96:D2:3A:3D:AE \nquit" | bluetoothctl
sleep 2s

pactl set-default-sink alsa_output.usb-SEEED_ReSpeaker_4_Mic_Array__UAC1.0_-00.analog-stereo
pactl set-default-source alsa_input.usb-SEEED_ReSpeaker_4_Mic_Array__UAC1.0_-00.analog-mono
# Activate Pulseaudio noise cancellation (deactivated because of an increased amount of false positive wake word detections)
# pactl unload-module module-echo-cancel
# pactl load-module module-echo-cancel aec_method=webrtc
# sleep 2s
# pactl set-default-sink alsa_output.usb-SEEED_ReSpeaker_4_Mic_Array__UAC1.0_-00.analog-stereo.echo-cancel
# pactl set-default-source alsa_input.usb-SEEED_ReSpeaker_4_Mic_Array__UAC1.0_-00.analog-mono.echo-cancel

systemctl --user restart raspotify.service