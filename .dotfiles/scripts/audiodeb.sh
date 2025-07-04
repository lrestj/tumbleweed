#/bin/bash/

# sudo apt update &&
# sudo apt install pipewire pipewire-audio-client-libraries wireplumber &&
# sudo apt install pavucontrol &&

systemctl --user enable pipewire.service
systemctl --user start pipewire.service
systemctl --user enable wireplumber.service
systemctl --user start wireplumber.service
