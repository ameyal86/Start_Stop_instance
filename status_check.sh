#!/bin/bash
# Check EC2 Instance Status
aws ec2 describe-instances \
--query "Reservations[*].Instances[*].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" \
--filters "Name=instance-state-name,Values=running" \
--output table

aws ec2 describe-instances \
--query "Reservations[*].Instances[*].{PublicIP:PublicIpAddress,PrivateIP:PrivateIpAddress,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" \
--filters "Name=instance-state-name,Values=stopped" \
--output table


aws ec2 describe-instances \
--query "Reservations[*].Instances[*].{PublicDns:PublicDnsName,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name}" \
--filters "Name=instance-state-name,Values=running" \
--output table



sleep 2
echo -ne '\n'





