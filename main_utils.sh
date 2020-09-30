#!/bin/bash

# Utilitaries for the main script

function init_logging
{
    local logdir="logs"
    local logfile="$logdir/new.log"
    
    mkdir -p $logdir
    touch "$logfile"
    echo "$logfile"
}

function log
{
    local logfile="$1"
    local msg="$2"
    echo "$msg" | tee -a "$logfile"   
}
