#!/bin/bash

#load environment variable from the config file
source ./config/config.env
#load addition functions from another file
source ./modules/functions.sh
#execute the reminder
bash ./app/reminder.sh
