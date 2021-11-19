#!/bin/bash
while true; do
  exec 3>&1
  selection=$(dialog \
    --backtitle "From @hakxcore (https://github.com/hakxcore)" \
    --title "termux-snippets" \
    --clear \
    --cancel-label "Exit" \
    --menu "Choose OS:" 0 0 4 \
    "1" "Termux" \
    "2" "Debian" \
    2>&1 1>&3)

    case $selection in
    0 )
      clear
      echo "Program terminated."
      ;;
    1 )
      echo "Termux"
      ;;
    2 )
      echo "Debian"
      ;;
  esac
done


