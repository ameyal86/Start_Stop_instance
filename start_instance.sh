#!/bin/bash
# Start EC2 Instance
clear
aws ec2 start-instances --instance-ids (Your_instanceID_without_Brackets)
clear 
aws ec2 start-instances --instance-ids (Your_instanceID_without_Brackets)  
clear
aws ec2 start-instances --instance-ids (Your_instanceID_without_Brackets) 
clear
sleep 2
echo -ne '\n'
aws ec2 describe-instances \
--query "Reservations[*].Instances[*].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" \
--filters "Name=instance-state-name,Values=running" \
--output table

aws ec2 describe-instances \
--query "Reservations[*].Instances[*].{PublicDns:PublicDnsName,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" \
--filters "Name=instance-state-name,Values=running" \
--output table

sleep 2
echo -ne '\n'
