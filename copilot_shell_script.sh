#!/bin/bash
#prompt user enter the new assignment name
echo "Enter the new assignment name:"
read new_assignment #reads user input

#searches the current directory and its subdirectory that matches name
maindir=$(find . -type d -name "submission_reminder_*" | head -n 1)

#update assignment value in config/config.env file
sed -i "s/^ASSIGNMENT=.*/ASSIGNMENT=$new_assignment/" config/config.env

#notife the user that the assignment name was updated
echo "Assignment updated to $new_assignment"
echo "Rerunning reminder app..."

#change into main directory
cd $maindir

#runs startup script to restart the app
./startup.sh

