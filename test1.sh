#!/bin/bash

DIALOG_CANCEL=1
DIALOG_ESC=255
HEIGHT=0
WIDTH=0

display_result() {
  echo $1
}

while true; do
  exec 3>&1
  selection=$(dialog \
    --backtitle "From @hakxcore(https://github.com/hakxcore" \
    --title "termux-snippets" \
    --clear \
    --cancel-label "Exit" \
    --menu "Please select:" $HEIGHT $WIDTH 4 \
    "1" "Termux" \
    "2" "Debian" \
    2>&1 1>&3)
  exit_status=$?
  exec 3>&-
  case $exit_status in
    $DIALOG_CANCEL)
      clear
      echo "Installation terminated."
      exit
      ;;
    $DIALOG_ESC)
      clear
      echo "Installation aborted." >&2
      exit 1
      ;;
  esac
  case $selection in
    1 )
      display_result "Hello this is termux installation"
    ;;
    2 )
      exit 0
      echo "Debian"
      # display_result "> Installation on Debian"
    ;;
  esac
done		23


# #!/bin/bash
# DIALOG_CANCEL=1
# DIALOG_ESC=255
# HEIGHT=0
# WIDTH=0

# 	display_result() {
# 	  dialog --title "$1" \
# 	    --no-collapse \
# 	    --msgbox "$result" 0 0
# 	}
# 	while true; do
# 			exec 3>&1
# 			selection=$(dialog \
# 			--backtitle "From @hakxcore(https://github.com/hakxcore)" \
# 		    --title "termux-snippets" \
# 		    --clear \
# 		    --cancel-label "Exit" \
# 		    --menu "Choose OS:" 15 40 5 \
# 		    	"1" "Termux" \
# 				"2" "Debian"
# 		    2>&1 1>&3)
# 		  	exit_status=$?
# 		  	exec 3>&-
# 		  	##handle termination error 
# 		  	case $exit_status in
# 			  	$DIALOG_CANCEL)
# 			  		clear
# 			      	echo "installation terminated."
# 			      	exit
# 			      	;;
# 			    $DIALOG_ESC)
# 			      	clear
# 			      	echo "installation aborted." >&2
# 			      	exit 1
# 			      	;;
# 		  	esac
		  
# 		  ##Operating system Selection 
# 		  case $selection in
# 		    0 )
# 		      clear
# 		      echo "installation terminated."
# 		      ;;
# 		    1 )

# 				  	##Installation on termux
# 				 #  	case $termux in
# 					#     ##programme termination error handel
# 					#     0 )
# 					#     	clear
# 					#     	echo "installation terminated."
# 					#     ;;
					    
# 					#     ##Install all snippets at once
# 					#     1 )
# 					# 		installAll
# 					# 	;;

# 					# 	##Install all snippets one by one
# 					# 	2 )
# 					# 		installOneByOne
# 					# 	;;
# 					# esac

# 		      ;;
# 		    2 )
# 				##Debian OS
# 		      ;;
# 		  esac
# 		done
