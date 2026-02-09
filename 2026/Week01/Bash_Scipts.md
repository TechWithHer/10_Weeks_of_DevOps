# Linux Commands 


readonly COLLEGE="DPS" #Constant_Variable
User Input : read 
tr = translate (or transform) characters.

## Listing Commands
ls # List files and directories
ls -l           # Long listing format
ls -a           # Include hidden files
ls *.sh         # List files with .sh extension
ls -i           # Show inode numbers
ls -d */        # List only directories


## Directory & Navigation Commands

pwd                         # Show present working directory
cd path_to_directory        # Change directory
cd ~                        # Go to home directory
cd                          # Also goes to home directory
cd -                        # Go to previous directory
cd ..                       # Move one level up
cd ../..                    # Move two levels up


## Directory Creation Commands

mkdir directoryName         # Create a directory
mkdir .HiddenDir            # Create hidden directory
mkdir A B C D               # Create multiple directories
mkdir /home/user/MyDirectory    # Create directory at specific path
mkdir -p A/B/C/D/E          # Create nested directories


Must-know commands (with real use)

grep, awk, sed → log parsing & data extraction

cut, sort, uniq, tr, wc

find, xargs

ps, top, htop, free, df, du

tar, gzip, zip

curl, wget

ssh, scp, rsync

crontab

👉 Interview check:

“Extract IPs with more than 100 hits from access logs”


1️⃣ read (for input)

| Flag       | Meaning                          |
| ---------- | -------------------------------- |
| `-p`       | Prompt text before reading input |
| `-s`       | Silent input (e.g., passwords)   |
| `-n N`     | Read only N characters           |
| `-t N`     | Timeout after N seconds          |
| `-a array` | Store input words in array       |

2️⃣ mkdir (make directories)

| Flag      | Meaning                                       |
| --------- | --------------------------------------------- |
| `-p`      | Create parent directories if they don’t exist , Sometimes used as promt also|
| `-v`      | Verbose; show created directories             |
| `-m MODE` | Set permissions while creating                |

3️⃣ cp (copy files)

| Flag        | Meaning                                           |
| ----------- | ------------------------------------------------- |
| `-r` / `-R` | Recursive (copy directories)                      |
| `-v`        | Verbose                                           |
| `-i`        | Interactive (confirm overwrite)                   |
| `-u`        | Copy only if source is newer                      |
| `-p`        | Preserve attributes (mode, ownership, timestamps) |


4️⃣ mv (move / rename)

| Flag | Meaning                         |
| ---- | ------------------------------- |
| `-v` | Verbose                         |
| `-i` | Interactive (confirm overwrite) |
| `-n` | No overwrite                    |


5️⃣ rm (remove files)

| Flag        | Meaning                                     |
| ----------- | ------------------------------------------- |
| `-r` / `-R` | Recursive (delete directories)              |
| `-f`        | Force (ignore nonexistent files, no prompt) |
| `-i`        | Interactive (confirm each deletion)         |
| `-v`        | Verbose                                     |

6️⃣ ls (list files)

| Flag | Meaning                                         |
| ---- | ----------------------------------------------- |
| `-l` | Long format (permissions, owner, size)          |
| `-a` | Show all, including hidden files (`.` and `..`) |
| `-h` | Human-readable sizes                            |
| `-R` | Recursive listing                               |
| `-t` | Sort by modification time                       |
| `-S` | Sort by file size                               |
| `-r` | Reverse order                                   |

7️⃣ echo (print text)

| Flag | Meaning                               |
| ---- | ------------------------------------- |
| `-n` | Do not append newline                 |
| `-e` | Enable backslash escapes (`\n`, `\t`) |
| `-E` | Disable backslash escapes (default)   |

8️⃣ ping (network check)

| Flag     | Meaning                                 |
| -------- | --------------------------------------- |
| `-c N`   | Send N packets then stop                |
| `-i N`   | Interval between packets (seconds)      |
| `-W N`   | Timeout in seconds to wait for response |
| `-t TTL` | Set Time To Live                        |
| `-q`     | Quiet output (summary only)             |

9️⃣ find (search files)

| Flag / Option         | Meaning                    |
| --------------------- | -------------------------- |
| `-type f`             | Files only                 |
| `-type d`             | Directories only           |
| `-name "pattern"`     | Match name pattern         |
| `-mtime N`            | Modified N days ago        |
| `-size +10M`          | Size greater than 10 MB    |
| `-exec command {} \;` | Run command on each result |

🔟 test / [ ] (condition checks)

| Flag      | Meaning              |
| --------- | -------------------- |
| `-f FILE` | Regular file exists  |
| `-d DIR`  | Directory exists     |
| `-e FILE` | File or dir exists   |
| `-r FILE` | Readable             |
| `-w FILE` | Writable             |
| `-x FILE` | Executable           |
| `-s FILE` | Exists and non-empty |

1️⃣1️⃣ chmod (change permissions)

| Flag               | Meaning                            |
| ------------------ | ---------------------------------- |
| `-R`               | Recursive                          |
| `-v`               | Verbose                            |
| `--reference=FILE` | Copy permissions from another file |

1️⃣2️⃣ chown (change owner/group)

| Flag               | Meaning                          |
| ------------------ | -------------------------------- |
| `-R`               | Recursive                        |
| `-v`               | Verbose                          |
| `--reference=FILE` | Copy ownership from another file |

1️⃣3️⃣ tar (archive)
| Flag     | Meaning                              |
| -------- | ------------------------------------ |
| `-c`     | Create archive                       |
| `-x`     | Extract archive                      |
| `-t`     | List archive contents                |
| `-v`     | Verbose                              |
| `-f`     | Archive filename follows             |
| `-z`     | gzip compression                     |
| `-j`     | bzip2 compression                    |
| `-C DIR` | Change to directory before operation |

