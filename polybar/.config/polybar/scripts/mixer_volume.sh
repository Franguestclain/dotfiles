#!/bin/bash

case "$(eww state -a | grep 'MIXER_STATE' | awk '{print $2}')" in
   closed)
       eww open mixer && eww update MIXER_STATE="open"
       ;;
   open)
       eww close mixer && eww update MIXER_STATE="closed"
       ;;
esac
