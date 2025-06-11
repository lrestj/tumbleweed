#!/bin/bash

swayidle -w \
        timeout 143 'brightnessctl -s set 400' \
        timeout 163 'notify-send "Displej se za okamžik vypne..."' \
        timeout 174 'notify-send "Vypínám displej..."' \
        timeout 180 'hyprctl dispatch dpms off' \
        resume 'hyprctl dispatch dpms on'
