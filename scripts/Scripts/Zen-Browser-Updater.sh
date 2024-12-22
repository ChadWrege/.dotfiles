#!/bin/bash

# Downlaod and run the ZenBrowser AppImage
bash <(curl https://updates.zen-browser.app/appimage.sh)

# Path to your .desktop file and AppImage
desktop_file="$HOME/.local/share/applications/ZenBrowser.desktop"
appimage="$HOME/.local/share/AppImage/ZenBrowser.AppImage"

echo "Is this a fresh install? Do you need to setup fuse directories? (yes/no)"
read -r user_input 

if [[ $user_input == "yes" && -f "$desktop_file" && -f "$appimage" ]]; then 
    
  # Temporary file to store modified content
  temp_file=$(mktemp)

  # environment variable added to the Exec line
  env_var="env FUSERMOUNT_PROG=/usr/bin/fusermount"

  # Loop through the lines in the original .desktop file
  while IFS= read -r line; do
    # If the line starts with 'Exec=', modify it by inserting the environment variable
    if [[ "$line" =~ ^Exec= && "$line" != *"$env_var"* ]]; then
      # Extract the command part after 'Exec=' and prepend the env variable
      echo "Exec=$env_var ${line:5}" >> "$temp_file"
    else
      # Otherwise, just copy the line as is
      echo "$line" >> "$temp_file"
    fi
  done < "$desktop_file"

  mv "$temp_file" "$desktop_file"
  chmod +x "$appimage" 
  chmod +x "$desktop_file"
  echo "Modified the .desktop file successfully!"

elif [[ $user_input == "no" ]]; then 
  echo "Exiting, have a delightful day!"
  exit 0
else 
  echo "Invalid input. Please enter 'yes' or 'no'."
  exit 1
fi 
