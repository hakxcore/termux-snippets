#!/bin/bash
## Author: Hakxcore https://github.com/hakxcore
## Colors
currentVersion="2.1.0"
RED="$(printf '\033[31m')"
GREEN="$(printf '\033[32m')"
ORANGE="$(printf '\033[33m')"
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"
CYAN="$(printf '\033[36m')"
WHITE="$(printf '\033[37m')"
BLACK="$(printf '\033[30m')"
REDBG="$(printf '\033[41m')"
GREENBG="$(printf '\033[42m')"
ORANGEBG="$(printf '\033[43m')"
BLUEBG="$(printf '\033[44m')"
MAGENTABG="$(printf '\033[45m')"
CYANBG="$(printf '\033[46m')"
WHITEBG="$(printf '\033[47m')"
BLACKBG="$(printf '\033[40m')"
RESETBG="$(printf '\e[0m')"
BLINK="$(printf '\033[5;31m')"

declare -a tools=(cheat cipher covidinfo crypt cryptocurrency geo gif googler ipinfo jukebox lyrics meme movie news pwned qrify shodan shorturl termux-snippets todo transfer weather)
prefix="/data/data/com.termux/files"

declare -a requirements=()
checkDialog()
{
  if  command -v dialog &>/dev/null; then
    echo ""
  else
    echo $BLUE"\tdialog should be installed"$RESETBG
    echo $BLUE"\tuse $RED'apt install dialog'$BLUE firstly"$RESETBG
  fi 
}

installRequirements()
{
  sudo apt install jp2a lolcat curl 
}

# while-menu-dialog: a menu driven Operating system chooseing Installation  program

DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

display_termux() {
  apt install figlet
}

display_debian(){
  dialog --title "$1" \
    --no-collapse \
    --msgbox "$result" 30 50
}

while true; do
  exec 3>&1
  selection=$(dialog \
    --backtitle "Hakxcore Here" \
    --title "termux-snippets" \
    --clear \
    --cancel-label "Exit" \
    --menu "Choose OS:" $HEIGHT $WIDTH 4 \
    "1" "Termux" \
    "2" "Debian OS" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
  case $exit_status in
    $DIALOG_CANCEL)
      clear
      echo "Program terminated."
      exit
      ;;
    $DIALOG_ESC)
      clear
      echo "Program aborted." >&2
      exit 1
      ;;
  esac
  case $selection in
    1 )
      display_termux "TERMUX"
      ;;
    2 )
      result=$(Debian)
      display_debian "DEBIAN"
      ;;
  esac
done

installOneByOne()
{
  read -p "$BLUE>$RESETBG Do you wish to install $BLUE$1$RESETBG [Y/n]: " answer
              answer=${answer:-Y}

              if [[ "$answer" == [Yy] ]]; then
                if [[ $1 == "weather" ]]; then
                  cd $1 || return 1
                  echo -n "Installing $BLUE$1$RESETBG: "
                  chmod a+x $1
                  cp $1 $prefix/usr/bin > /dev/null 2>&1;
                  echo ""$GREEN"Success$RESETBG"
                  cd ..; installationEnd ; exit 1 || return
                elif [[ $1 == "termux-snippets" ]]; then
                    echo -n "Installing $BLUE$1$RESETBG: "
                      chmod a+x $1
                      cp $1 $prefix/usr/bin > /dev/null 2>&1;
                      echo ""$GREEN"Success$RESETBG"
                else 
                  cd $1 || return 1
                  echo -n "Installing $BLUE$1$RESETBG: "
                  chmod a+x $1
                  cp $1 $prefix/usr/bin > /dev/null 2>&1;
                  echo ""$GREEN"Success$RESETBG"
                  cd .. || return 1
                fi
              fi
}

updateTool()
{
  if [[ -f  $prefix/usr/bin/$1 ]]; then
    cd $1 || return 1
    git pull origin
    echo -n "Installing $BLUE$1$RESETBG: "
    chmod a+x $1
    cp $1 $prefix/usr/bin > /dev/null 2>&1 || { echo "Failure"; echo "Error copying file, try running install script again"; exit 1; }
    echo ""$GREEN"Success$RESETBG"
    cd ..; installationEnd || return 1
  fi
}


singleInstall()
{
  cd $1 || exit 1
  echo -n "Installing $BLUE$1$RESETBG: "
  chmod a+x $1
  cp $1 $prefix/usr/bin > /dev/null 2>&1 || { echo "Failure"; echo "Error copying file, try running install script again"; exit 1; }
  echo ""$GREEN"Success$RESETBG"
  cd ..; installationEnd || exit 1
}

installationEnd()
{
  echo -n "( •_•)"
  sleep .75
  echo -n -e "\r( •_•)>$BLUE⌐■-■$RESETBG"
  sleep .75
  echo -n -e "\r               "
  echo  -e "\r($BLUE⌐■_■$RESETBG)"
  sleep .5
  echo "Termux Snippets version $BLUE$currentVersion$RESETBG"
  echo  "$GREEN""https://github.com/hakxcore/Termux-snippets$RESETBG"
}