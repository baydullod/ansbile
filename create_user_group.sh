#!/bin/bash

# Create the group 'probergroup'
groupadd probergroup

# Create the user 'prob' with a strong password
useradd -m -g probergroup prob
echo "prob:password" | chpasswd  # Set password for prob user

# Create the user 'probe_1' with a one-time password
useradd -m -g probergroup probe_1
echo "probe_1:probepassword1234!#" | chpasswd  # Set one-time password for probe_1
chage -d 0 probe_1  # Force password change at next login

# Store passwords in a text file
echo "prob:password" > /tmp/prob_password.txt
echo "probe_1:probepassword1234!#" > /tmp/probe_1_password.txt

# Remove the script after execution
rm -- "$0"
