# Linux Commands – Day 02 Reference

## Listing Commands

ls
# List files and directories

ls -l
# Long listing format

ls -a
# Include hidden files

ls *.sh
# List files with .sh extension

ls -i
# Show inode numbers

ls -d */
# List only directories


## Directory & Navigation Commands

pwd
# Show present working directory

cd path_to_directory
# Change directory

cd ~
# Go to home directory

cd
# Also goes to home directory

cd -
# Go to previous directory

cd ..
# Move one level up

cd ../..
# Move two levels up


## Directory Creation Commands

mkdir directoryName
# Create a directory

mkdir .HiddenDir
# Create hidden directory

mkdir A B C D
# Create multiple directories

mkdir /home/user/MyDirectory
# Create directory at specific path

mkdir -p A/B/C/D/E
# Create nested directories
