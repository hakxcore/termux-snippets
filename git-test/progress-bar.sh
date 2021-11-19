#!/bin/bash
declare -i COUNTER=1
{
    while test $COUNTER -le 100
        do
            echo $COUNTER
            COUNTER=COUNTER+1
            sleep 1
    done
    } |  dialog --gauge  "This is a progress bar"  10 50 0
