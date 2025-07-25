#!/bin/bash
<<Comment
This script will take backups from source to target
Comment

Src_dir="/home/ubuntu/script"
tgt_dir="/home/ubuntu/backups"

backup_filename="backup_$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"

echo "$backup_filename"

tar -czvf "${tgt_dir}/${backup_filename}""$src_dir"

echo "backup Started"
echo "Backing up to $backup_filename...."
echo "Backup Complete"
