#!/bin/bash
repo=`checkupdates | wc -l`
aur=`yay -Qua | wc -l`
total=$((repo+aur))
echo $total
