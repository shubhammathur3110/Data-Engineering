#!/bin/bash

if [ ! -e /opt/.initialized ]
then
  sudo touch /opt/.initialized
#  sudo chown -R shubham:shubham /home/shubham/material
fi

/home/shubham/.local/bin/jupyter lab --ip 0.0.0.0
