#!/bin/bash

# Function to display messages
function print_message {
    echo -e "\n===== $1 =====\n"
}

# Update the package list
print_message "Updating package list..."
sudo apt update

# Upgrade all packages, including the kernel
print_message "Upgrading all packages including the kernel..."
sudo apt -y full-upgrade

# Install the latest generic kernel package
print_message "Installing the latest generic kernel..."
sudo apt -y install --install-recommends linux-generic

# Clean up unnecessary packages
print_message "Removing unnecessary packages..."
sudo apt -y autoremove --purge

# Update GRUB
print_message "Updating GRUB..."
sudo update-grub

# Reboot the system
print_message "Rebooting the system to apply the new kernel..."
sudo reboot
