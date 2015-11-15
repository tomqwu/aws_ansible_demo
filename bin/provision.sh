#!/bin/bash

ansible-playbook -i ec2.py aws-infra.yml -f 5
ansible-playbook -i ec2.py aws-ec2.yml -f 5
