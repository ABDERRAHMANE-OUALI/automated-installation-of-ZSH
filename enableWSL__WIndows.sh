#!/bin/bash

set -e

# Open PowerShell as Administrator and run:
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

CHOOSE=""
read -p "Enter your name: " CHOOSE
if [ "$CHOOSE" == "WSL2" ]
 then
   dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
  else
    echo "Invalid Input reRun the file By ./enableWSL__Windows.sh"
 fi