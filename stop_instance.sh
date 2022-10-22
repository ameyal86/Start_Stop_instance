#!/bin/bash
# Start EC2 Instance
aws ec2 stop-instances --instance-ids (Your_instanceID_without_Brackets) > /dev/null
aws ec2 stop-instances --instance-ids (Your_instanceID_without_Brackets) > /dev/null
aws ec2 stop-instances --instance-ids (Your_instanceID_without_Brackets) > /dev/null
aws ec2 describe-instances \
--query "Reservations[*].Instances[*].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" \
--filters "Name=instance-state-name,Values=stopped" \
--output table

sleep 2
echo -ne '\n'
