#!/bin/bash

if [ ! -e /opt/.initialized ]
then
  sudo touch /opt/.initialized
#  sudo chown -R shubham:shubham /home/shubhammathur3110/material
fi

/home/shubhammathur3110/.local/bin/jupyter lab --ip 0.0.0.0
