#!/bin/bash

#update system
echo "Updating System, please wait."
sudo apt update -y
sudo apt upgrade -y
echo "Update complete..."

#creating a user
echo "Add a user, please enter a name:"
read newuser_name
sudo useradd -m $newuser_name
echo "Please create a password:"
sudo passwd newuser_name

#setting permissions
groupadd wheel 
usermod -G wheel $newuser_name

#starting setup
su $newuser_name
