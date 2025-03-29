#!/bin/bash

# Function to  add a user

add_user(){
	read -p "Enter username: " username
	sudo useradd -m "$username"
	echo "User $username added successfully. "
}

# Funtion to delete a user

delete_user(){
	read -p "Enter username to delete: " username
	sudo userdel -r "$username"
	echo "User $username deleted successfully."
}

# Funtion to modify a user

modify_user() {
	read -p "Enter existing username: " oldname
	read -p "Enter new username: " newname
	sudo usermod -l "$newname" "$oldname"
	echo "User $oldname renamed to $newname."
}

#Funtion to create a group

create_group() {
	read -p "Enter group name: " groupname
	sudo groupadd "$groupname"
	echo "Group $groupname created successfully."
}

#Funtion to add user to group

add_user_to_group() {
	read -p "Enter username: " username
	read -p "Enter group name: " groupname
        sudo usermod -aG "$groupname" "$username"
	echo "User $username added to $groupname."
}

# Funtion to backup a directory

backup_directory() {
	read -p "Enter directory path to backup: " dir
	tar -czvf backup_$(date +$F).tar.gz "$dir"
	echo "Backup of $dir created successfully."
}

# Display menu
while true; do
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Modify User"
    echo "4. Create Group"
    echo "5. Add User to Group"
    echo "6. Backup Directory"
    echo "7. Exit"

    read -p "Choose an option: " choice

    case $choice in
        1) add_user ;;
        2) delete_user ;;
        3) modify_user ;;
        4) create_group ;;
        5) add_user_to_group ;;
        6) backup_directory ;;
        7) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option, please try again." ;;
    esac
done

