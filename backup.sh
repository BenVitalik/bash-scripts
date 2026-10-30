#!/bin/bash
folder=$1

if [ -d "$folder" ]
then
  today=$(date +%F)
  mkdir -p backups
  cp -r "$folder" "backups/${folder}_$today"
  echo "Backup of $folder is ready"
else
  echo "Folder $folder not found"
fi
