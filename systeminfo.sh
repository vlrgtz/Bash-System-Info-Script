#!/bin/bash

#Goal: createa user friendly script that can be run from the terminal
#for a user to easily get important system information.

#Create a script that will present the following menu to a user to choose from
#go with an infinite loop: while true; do...done - make sure to include break/exit option

#step 1, work on echo statements explaining what the script does and include read statement for
#the choices, read -p prompts a message before user types in their choice
#revision: include a colon and space in the quotes for a better log 

while true; do
   echo "Choose option for more real time system information:"
#echo (list all options) mention you to only write number 1-7
   echo "1) IP addresses"
   echo "2) Current user"
   echo "3) CPU info"
   echo "4) Memory info"
   echo "5) Top 5 Memory processes"
   echo "6) Top 5 CPU processes"
   echo "7) Network Connectivity"
   echo "8) Exit"
   read -p "Please enter a number between 1-8: " choice

#if "choice" equals (number between 1-8), then
#(find the commands that will get you the info they are requesting)
#create a variable and use echo statement including the variable with dollar sign

#elif all choices after one, include else at the end and echo that wasnt valid
#make sure to include break

#1-ip address: two different processes needed for getting the private and public ips.
#man hostname -i grabs private ip address, avoided -I to not get multiple addresses
#need to send an http request to get public ip from web server
#man curl -s mutes the url transfer to only give you the output that you requested,
#which is the public ip in this case by writing ifconfig.me
#use the web service ifconfig.me to receive the public ip of the client making the
#http request

   if [ "$choice" -eq 1 ]; then
      private_ip=$(hostname -i)
      echo "Private IP: $private_ip"
      public_ip=$(curl -s ifconfig.me)
      echo "Public IP"
#2-current user

   elif [ "$choice" -eq 2 ]; then
      echo "in progress"

#3-cpu info

   elif [ "$choice" -eq 3 ]; then
      echo "in progress"

#4-memory info

   elif [ "$choice" -eq 4 ]; then
      echo "in progress"

#5-top 5 memory processes

   elif [ "$choice" -eq 5 ]; then
      echo "in progress"

#6-top 5 CPU processes

   elif [ "$choice" -eq 6 ]; then
      echo "in progress"

#7-network connectivity

   elif [ "$choice" -eq 7 ]; then
      echo "in progress"

#8-exit
   elif [ "$choice" -eq 8 ]; then
      echo "exiting..."
      break

   else
      echo "invalid choice... please write a number between 1 and 8."

   fi

   read -p "press enter to continue"

done
