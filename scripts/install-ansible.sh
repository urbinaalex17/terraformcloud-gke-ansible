#!/bin/bash

# Install requirements
python -m pip install --user ansible==2.9.14 openshift
export PATH=$PATH:$HOME/.local/bin
ansible-playbook --version