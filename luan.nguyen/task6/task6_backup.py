```python
#!/usr/bin/env python3
import os
import sys
import time
import subprocess

# Set the backup directory and database credentials
backup_dir = "/home/backups/back to the future "
db_name = "minhluan"
db_user = "luannm"
db_password = "leuleuhokchobietpassdau"

# Create the backup directory if it doesn't exist
if not os.path.exists(backup_dir):
    os.makedirs(backup_dir)

# Get the current date
current_date = time.strftime("%Y-%m-%d")

# Set the backup filename
backup_filename = f"{db_name}-{current_date}.sql.gz"

# Backup command
backup_command = f"mysqldump -u {db_user} -p{db_password} {db_name} | gzip > {os.path.join(backup_dir, backup_filename)}"

# Execute the backup command
try:
    subprocess.run(backup_command, shell=True, check=True)
    print(f"Database backup {backup_filename} created successfully.")
except subprocess.CalledProcessError as e:
    print(f"Error: {e}")
    sys.exit(1)

# Remove backups older than 3 days
import os
import time

# Set the folder path and the age limit (in seconds)
folder_path = "/home/backups/back to the future "
age_limit = 3 * 24 * 60 * 60  # 3 days in seconds

# Get the current time
current_time = time.time()

# Iterate through the files in the folder
for file_name in os.listdir(folder_path):
    file_path = os.path.join(folder_path, file_name)

    # Check if the file is a file and not a directory
    if os.path.isfile(file_path):
        # Get the time when the file was last modified
        file_age = current_time - os.path.getmtime(file_path)

        # Check if the file age is greater than the age limit
        if file_age > age_limit:
            # Remove the file
            os.remove(file_path)
            print(f"Removed {file_name} - age: {file_age / (24 * 60 * 60)} days")
# Telegram ID 
USERID="@minhluan0801"
KEY=""
TIMEOUT="10"
URL="https://api.telegram.org/bot$KEY/sendMessage"
