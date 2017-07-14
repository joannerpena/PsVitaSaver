#!/bin/bash

# Welcome Message
clear
# -e : LineBreak Allowed (\n)
echo -e "**Welcome to PsVita Saver**\n"

# Variables
# DATE = Example 010117(Jan 01 2017)
DATE=$(date +%m%d%y)
BACK="PSVita-BackUpSave-$DATE"
TROPHYS="PSVita-Trophys-$DATE"
SAVEDATA="PSVita-Save-$DATE"
# This makes sure to find a PsVita with Henkaku
PSVITA="/Volumes/Untitled/tai"

# Functions
# 1. BackUp
function BACKUP {
    # -d : Exist?
    if [[ -d ~/Desktop/"$BACK" ]]; then
        
        echo "You've done a BackUp"
        echo "Would you like to Overwrite it?"
        # -e : LineBreak Allowed (\n)
        # -n : Stay in the same line
        echo -en "\nYes(y) or No(n)? : "
        read ANSWER

        case $ANSWER in
            y)
                clear
                echo "Making a BackUp..."
                cd /Volumes/Untitled/
                cd user/00
                tar -czvf - ./* > ~/Desktop/"$BACK".tar.gz
                # -e : LineBreak Allowed (\n)
                echo -e "\nFinish"
                ;;
            n)
                clear
                echo "Have a Good Day!"
                ;;
        esac
    else

        echo "Making a BackUp..."
        cd /Volumes/Untitled/
        cd user/00
        tar -czvf - ./* > ~/Desktop/"$BACK".tar.gz
        # -e : LineBreak Allowed (\n)
        echo -e "\nFinish"
        
    fi
}

# 2. Trophys
function TROPHY {
    # -d : Exist?
    if [[ -d ~/Desktop/"$TROPHYS" ]]; then
        
        echo "You've Saved Your Trophys"
        echo "Would you like to Overwrite it?"
        # -e : LineBreak Allowed (\n)
        # -n : Stay in the same line
        echo -en "\nYes(y) or No(n)? : "
        read ANSWER

        case $ANSWER in
            y)
                clear
                echo "Saving Your Trophys..."
                cd /Volumes/Untitled/
                cd user/00
                tar -czvf - ./* > ~/Desktop/"$TROPHYS".tar.gz
                echo -e "\nFinish"
                ;;
            n)
                clear
                echo "Have a Good Day!"
                ;;
        esac
    else

        echo "Saving Your Trophys..."
        cd /Volumes/Untitled/
        cd user/00
        tar -czvf - ./* > ~/Desktop/"$TROPHYS".tar.gz
        # -e : LineBreak Allowed (\n)
        echo -e "\nFinish"
        
    fi
}

# 3. Savedata
function SAVE {
    # -d : Exist?
    if [[ -d ~/Desktop/"$SAVEDATA" ]]; then
        
        echo "You've Done a BackUp to Your Savedata"
        echo "Would you like to Overwrite it?"
        # -e : LineBreak Allowed (\n)
        # -n : Stay in the same line
        echo -en "\nYes(y) or No(n)? : "
        read ANSWER

        case $ANSWER in
            y)
                clear
                echo "Making a BackUp to Your Savedata..."
                cd /Volumes/Untitled/
                cd user/00
                tar -czvf - ./* > ~/Desktop/"$SAVEDATA".tar.gz
                # -e : LineBreak Allowed (\n)
                echo -e "\nFinish"
                ;;
            n)
                clear
                echo "Have a Good Day!"
                ;;
        esac
    else

        echo "Making a BackUp to Your Savedata..."
        cd /Volumes/Untitled/
        cd user/00
        tar -czvf - ./* > ~/Desktop/"$SAVEDATA".tar.gz
        # -e : LineBreak Allowed (\n)
        echo -e "\nFinish"
        
    fi
}

# Process
# -d : Exist?
if [[ -d $PSVITA ]]; then

    # -e : LineBreak Allowed (\n)
    echo -e "What Would You Like To Do?\n"
    echo "1. BackUp!"
    echo "2. Save Trophys"
    echo "3. Save just your Savedata"
    # -e : LineBreak Allowed (\n)
    # -n : Stay in the same line
    echo -en "\n~~> 1,2 or 3? : "
    read ANSWER

    case $ANSWER in
        1)
            clear
            BACKUP
            ;;
        2)
            clear
            TROPHY
            ;;
        3)
            clear
            SAVE
            ;;
    esac
else
    echo "No PsVita Connected"
    # -e : LineBreak Allowed (\n)
    # -n : Stay in the same line
    echo -en "\n**Press Any Key to Exit**"
    # -n : Number of Character allowed
    # -s : Hide the User's input
    read -n 1 -s
    clear
fi
