#!/bin/bash

# Main super-script to launch to install all stuff on the system 

basedir="$(pwd)"
RES=$basedir/resources
LINUX_SETUP=$res/linux_setup
PKGS_INST=$res/pkgs_install
PKGS_UNINST=$res/pkgs_uninstall
REPO=$res/repositories

source main_utils.sh

logfile=$(init_logging)
echo "Now logging in $logfile"

# Setup the current Linux installation
log "$logfile" "- STEP 1 : setup the current Linux installation"
## Create the basic filetree
log "$logfile" "-- TASK 1 : create the basic filetree"

paths_to_expand=$(cat $LINUX_SETUP/filetree.txt)

for path_to_exp in ${paths_to_expand[@]}
do
    echo "Expansion of" $path_to_exp ": creating directories" 
    eval mkdir -p $path_to_exp
done
