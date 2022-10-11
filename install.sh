#!/bin/bash
# Acquire wakelock
termux-wake-lock

#Updating & Upgrading packages
pkg update && pkg upgrade


#Installing postgres
pkg install postgres -y

#Setting up directories 
echo Creating directories and initializing database
mkdir ./postgres && initdb ./postgres

#starting server
pg_ctl -D ./postgres start

#Creating User

echo createuser --superuser --pwprompt ${USER} //optional

#Creating Alias
echo pgstart starts server whereas pgstop halts
alias pgstart='pg_ctl -D ./postgres start' >> ~/.bashrc
alias pgstop='pg_ctl -D ./postgres stop' >> ~/.bashrc


echo psql -d "<database_name>"
psql -d postgres
