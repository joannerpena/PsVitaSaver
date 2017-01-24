#!/bin/bash

#Welcome Message
clear
echo -e "**Welcome to PsVita Saver**\n"

#Variables
DATE=$(date +%m%d%y)
BACK="PSVita-BackUpSave-$DATE"
TROPHYS="PSVita-Trophys-$DATE"
SAVEDATA="PSVita-Save-$DATE"
PSVITA="/Volumes/Untitled/tai"

function BACKUP {
    if [[ -d ~/Desktop/"$BACK" ]]; then
        
        echo "You've done a BackUp"
        echo "Would you like to Overwrite it?"
        echo -en "\nYes(y) or No(n)? : "
        read ANSWER

        case $ANSWER in
            y)
                clear
                echo "Making a BackUp..."
                cd /Volumes/Untitled/
                cd user/00
                cp -r ./ ~/Desktop/"$BACK"
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
        cp -r ./ ~/Desktop/"$BACK"
        echo -e "\nFinish"
        
    fi
}

function TROPHY {
    if [[ -d ~/Desktop/"$TROPHYS" ]]; then
        
        echo "You've Saved Your Trophys"
        echo "Would you like to Overwrite it?"
        echo -en "\nYes(y) or No(n)? : "
        read ANSWER

        case $ANSWER in
            y)
                clear
                echo "Saving Your Trophys..."
                cd /Volumes/Untitled/
                cd user/00
                cp -r ./trophy ~/Desktop/"$TROPHYS"
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
        cp -r ./trophy ~/Desktop/"$TROPHYS"
        echo -e "\nFinish"
        
    fi
}

function SAVE {
    if [[ -d ~/Desktop/"$SAVEDATA" ]]; then
        
        echo "You've Done a BackUp to Your Savedata"
        echo "Would you like to Overwrite it?"
        echo -en "\nYes(y) or No(n)? : "
        read ANSWER

        case $ANSWER in
            y)
                clear
                echo "Making a BackUp to Your Savedata..."
                cd /Volumes/Untitled/
                cd user/00
                cp -r ./savedata ~/Desktop/"$SAVEDATA"
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
        cp -r ./savedata ~/Desktop/"$SAVEDATA"
        echo -e "\nFinish"
        
    fi
}

if [[ -d $PSVITA ]]; then

    echo -e "What Would You Like To Do?\n"
    echo "1. BackUp!"
    echo "2. Save Trophys"
    echo "3. Save just your Savedata"
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
fi
