#!/bin/bash
aws ec2 describe-regions --output table
aws ec2 run-instances --image-id ami-66506c1c --security-group-ids sg-35160d41 --count 1 --instance-type t2.micro --key-name myAWS_ubuntu_Key --query 'Instances[0].InstanceId'
