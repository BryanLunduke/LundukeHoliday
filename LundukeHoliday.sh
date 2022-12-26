#!/bin/bash

# 
# This holiday decoration script was put together by Bryan Lunduke.
# www.Lunduke.com
# 
# Some portions were inspired or copied from other works.  Where that is
# the case it is noted within the source.
# 

# Reset
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White




ShowTree () {
# 
# The base of this animated tree was copied from ChrisBASHTree
# https://github.com/sergiolepore/ChristBASHTree
#
trap "tput reset; tput cnorm; exit" 2
clear
tput civis
lin=2
col=$(($(tput cols) / 2))
c=$((col-1))
est=$((c-2))
color=0
tput setaf 2; tput bold

# Tree
for ((i=1; i<20; i+=2))
{
    tput cup $lin $col
    for ((j=1; j<=i; j++))
    {
        echo -n \*
    }
    let lin++
    let col--
}

tput sgr0; tput setaf 3

# Trunk
for ((i=1; i<=2; i++))
{
    tput cup $((lin++)) $c
    echo 'mWm'
}
new_year=$(date +'%Y')
let new_year++
tput setaf 1; tput bold

tput cup $lin $((c - 6)); echo MERRY CHRISTMAS

let c++
k=1

# Lights and decorations
while true; do
    for ((i=1; i<=35; i++)) {
        # Turn off the lights
        [ $k -gt 1 ] && {
            tput setaf 2; tput bold
            tput cup ${line[$[k-1]$i]} ${column[$[k-1]$i]}; echo \*
            unset line[$[k-1]$i]; unset column[$[k-1]$i]  # Array cleanup
        }

        li=$((RANDOM % 9 + 3))
        start=$((c-li+2))
        co=$((RANDOM % (li-2) * 2 + 1 + start))
        tput setaf $color; tput bold   # Switch colors
        tput cup $li $co
        echo o
        line[$k$i]=$li
        column[$k$i]=$co
        color=$(((color+1)%8))
        # Flashing text
        sh=1
        for l in C O D E
        do
            tput cup $((lin+1)) $((c+sh))
            #echo $l
            let sh++
            sleep 0.01
        done
    }
    k=$((k % 2 + 1))
done

}



ShowMenorah () {


# Draw the Menorah
clear
echo
echo
echo 


echo -e "${Blue}                            |"
echo -e "${Blue}                |  |  |  |  |  |  |  |  |"
echo -e "${Blue}                |  |  |  |  |  |  |  |  |"
echo -e "${Blue}                |  |  |  |  |  |  |  |  |"
echo -e "${Blue}                \  \  \  \  |  /  /  /  /"
echo -e "${Blue}                 \  \  \  \_|_/  /  /  /"
echo -e "${Blue}                  \  \  \   |   /  /  /"
echo -e "${Blue}                   \  \  \__|__/  /  /           Happy Hanukkah!"
echo -e "${Blue}                    \  \    |    /  /        ${White}Chag Hanukkah sameach!"
echo -e "${Blue}                     \  \___|___/  /"
echo -e "${Blue}                      \     |     /"
echo -e "${Blue}                       \____|____/"
echo -e "${Blue}                            |"
echo -e "${Blue}                          __|__"
echo -e "${Blue}                        ____|____"       
       
             

# Count the candles for each night
while true; do
    for ((i=1; i<=9; i++)) {

tput cup 2 0; echo -e "${White}                            |"

if [ $i -eq 1 ]
then # Night 0 - Shamash only
tput cup 2 0; echo -e "${White}                            |"
tput cup 3 0; echo -e "${White}                           ${Blue} |  ${White}          "
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Shamash only"

elif [ $i -eq 2 ]
then # Night 1
tput cup 3 0; echo -e "${White}                           ${Blue} |  ${White}         |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 1     "

elif [ $i -eq 3 ]
then # Night 2
tput cup 3 0; echo -e "${White}                           ${Blue} |  ${White}      |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 2     "

elif [ $i -eq 4 ]
then # Night 3
tput cup 3 0; echo -e "${White}                           ${Blue} |  ${White}   |  |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 3     "

elif [ $i -eq 5 ]
then # Night 4
tput cup 3 0; echo -e "${White}                           ${Blue} |  ${White}|  |  |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 4     "

elif [ $i -eq 6 ]
then # Night 5
tput cup 3 0; echo -e "${White}                         | ${Blue} |  ${White}|  |  |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 5     "

elif [ $i -eq 7 ]
then # Night 6
tput cup 3 0; echo -e "${White}                      |  | ${Blue} |  ${White}|  |  |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 6     "

elif [ $i -eq 8 ]
then # Night 7
tput cup 3 0; echo -e "${White}                   |  |  | ${Blue} |  ${White}|  |  |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 7     "

elif [ $i -eq 9 ]
then # Night 8
tput cup 3 0; echo -e "${White}                |  |  |  | ${Blue} |  ${White}|  |  |  |"
tput cup 6 0; echo -e "${Blue}                |  |  |  |  |  |  |  |  |         ${White}Night 8     "

fi
     
    
    sleep 0.5
    }

done


}




if [ $1 = "Tree" ]
then
  ShowTree
 exit
elif [ $1 = "Menorah" ]
then
  ShowMenorah
  exit
 exit
else
  echo -e "${White}Possible options for Lunduke's Shell Holiday Decorations are ${Blue}Tree, and Menorah"
  exit
fi
