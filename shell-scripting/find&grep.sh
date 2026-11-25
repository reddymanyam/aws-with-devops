// find and grep are the essential things to learn in shell scripting. This script will help you to find and grep the files in a directory.
// find is used to search for files in a directory hierarchy.
// while grep is used to search for specific patterns within files.
// The command `grep -rl "check your system" / --exclude-dir=proc --exclude-dir=sys --exclude-dir=dev 2>/dev/null` searches recursively from the root directory (/) for files containing the string "check your system", 
// while excluding the directories /proc, /sys, and /dev from the search. The `2>/dev/null` part redirects any error messages (like permission denied errors) to /dev/null, effectively silencing them.

// --------------- find -----------------
#  .     Current directory
# ..     Parent directory
# /      Root directoryImportant symbols

// for finding blocked and character devices, you can use the following commands:
#  find / -type b 2>/dev/null   # for blocked devices
#  find / -type c 2>/dev/null   # for character devices

// blocked deivces are those that provide buffered access to hardware devices.
// It means that data is first stored in a buffer (temporary storage area) before being /sent to the device. This buffering can improve performance and efficiency, especially for devices that have slower access times or require data to be sent in larger chunks.
// the `-type b` option in the find command is used to search for block special files, which are typically associated with block devices. Block devices are hardware devices that read and write data in fixed-size blocks, such as hard drives, SSDs, and USB drives. These devices allow random access to data, meaning you can read or write data at any position on the device without having to go through the entire file sequentially.
// character devices, on the other hand, provide unbuffered access to hardware devices. This means that data is sent directly to the device without being stored in a buffer first. Character devices are typically associated with devices that transmit data in a continuous stream, such as keyboards, mice, and serial ports. These devices allow sequential access to data, meaning you read or write data in the order it is received or sent.

// find syntax 
# find [path] [expression]

// find examples for all type files based on -name.
# find /var/log -type f -name "*.log" ----> for all log files in /var/log directory
# find . -type f -name "*log"   ---> for all log files in current directory
# find /conf -type f -name "conf*" ----> for all files starting with conf in /conf directory
# find /var/log -type f  -name "*error" ----> for all files ending with error in /var/log directory
# find . -type f -iname "*.LOG" ----> for all files with .LOG extension (case-insensitive), it will print all files with .log, .LOG, .Log, .lOg, etc. extensions.
# find . -type f -name "*log" ----> for all files with "log" in their name
# find . -type f -name "file?.txt"  // only matches one charater, it means it will print only upto file1.txt --> file9.txt and also like fileA.txt like this not file10.txt (because it contain 2 characters).
# find . -type f -name "file[0-9].txt"

// find examples based on -size
# find . -type f -size +10M  ------> it will find size greater than 10mb in current directory
# find . -type f -size -10C  ------> it will find size less than 10bytes in current directory
# find . -type f -size +1G   ------> it will find the size greater than 1gb in current directory
# find /var/log -type f -size +100M -size -1G  ------> it will find tha all the files in /var/log path which are greater than 100mb and less than 1gb
# find . -type f -size +10M -name "*.txt"  ------> it will find all the files in current directory greter than 10mb of all the files which ends with .txt

# C  -------> bytes
# K  -------> kilobytes(kb)
# M -------> megabytes(mb)
# G -------> gigabytes(gb)


// find examples for all the files based on -mtime modified-time and -atime accessed-time and -ctime status-changed-time
# find . -type f -mtime +1  ------> it will find all the files which are modified 1 day ago (modified 1 day ago)
# find . -type f -mtime -1  ------> it will find all the files modified with in 1 day.
# find . -type f -mmin +40  ------> it will find all the files modified 40min ago.
# find . -type f -mmin -30  ------> it will find all the files modified with in 40min.

# find . -type f -atime +3  ------> it will find all the files accessed 3 day ago
# find . -type f -amin  -60 ------> it will find all the files accesed with in 60 min

# find . -type f -ctime +4  ------> it will find all the files whose permissions are changed 4 days ago
# find . -type f -cmin -30  ------> it will find all the files whose permissions are changed with in 30 min

// find files newer, older, and same as a reference file and empty files and directories 
# find . -type f -newer reference_file ------> it will find all the files newer than reference_file 
# find . -type f -older reference_file ------> it will find all the files older than reference_file 
# find . -type f -samefile reference_file ------> it will find all the files same as reference_file 
# find . -type f -empty ------> it will find all the empty files 
# find . -type d -empty ------> it will find all the empty directories 

// find examples for all the files based on -user, -group, -perm, -exec and -delete
# find . -type f -user root  ------> it will find all the files owned by root user
# find . -type f -group root  ------> it will find all the files owned by root group
# find . -type f -perm 644  ------> it will find all the files with permission 644
# find . -type f -perm - 644  ------> it will find all the files with permission 644 or more
# find . -type f -perm / 644  ------> it will find all the files with permission 644 or less
# find . -type f -perm + 644  ------> it will find all the files with permission 644 or more (deprecated)

// find examples for combined conditions AND and OR     
# find . -type f -name "*.log" -size +10M  ------> it will find all the files with .log extension and size greater than 10mb in current directory
# find . -type f -name "*.log" -o -name "*.txt"  ------> it will find all the files with .log or .txt extension in current directory
# find . -type f \( -name "*.log" -o -name "*.txt" \)  ------> it will find all the files with .log or .txt extension in current directory (using parentheses to group conditions)

// find examples for print and exec
# find . -type f -name "*.log" -print  ------> it will print all the files with .log extension in current directory
# find . -type f -name "*.log" -exec ls -l {} \;  ------> it will execute the command ls -l on all the files with .log extension in current directory ----> {} this will represents the path of the file found by find command and \; this will terminate the command.
# find . -type f -name "*.log" -exec rm -f {} \;  ------> it will delete all the files with .log extension in current directory
# find . -type f -name "*.log"  -xargs rm -f  ------> it will delete all the files with .log extension in current directory (using xargs to pass the list of files to rm command)


// Essential grep options
// Learn these options until you can recall them without looking them up.
// Option	Purpose	Example

# -i	Ignore case	grep -i "error" app.log
# -n	Show line numbers	grep -n "ERROR" app.log
# -v	Show nonmatching lines	grep -v "INFO" app.log
# -r	Search recursively through directories	grep -r "ERROR" /var/log
# -R	Recursive search that also follows symbolic links encountered during traversal	grep -R "ERROR" /var/log
# -l	Print filenames containing matches	grep -l "ERROR" *.log
# -L	Print filenames without matches	grep -L "ERROR" *.log
# -c	Count matching lines per file	grep -c "ERROR" app.log
# -w	Match whole words	grep -w "error" app.log
# -x	Match entire lines	grep -x "ERROR" app.log
# -o	Print only the matching portion	grep -o "ERROR" app.log
# -E	Use extended regular expressions	`grep -E "ERROR
# -F	Search for a literal string	grep -F "user.id[1]" app.log
# -q	Quiet mode; use the exit status instead of printing matching lines

# grep -i "error" app.log  # This command searches for the string "error" in the file app.log, ignoring case differences. It will match "Error", "ERROR", "eRrOr", etc.   

// A. Search for lines starting with ERROR
# grep '^ERROR' application.log

// B. Search for lines ending with failed
# grep 'failed$' application.log

// C. Search for ERROR or WARNING
# grep -E 'ERROR|WARNING' application.log

// D. Search for whole word login
# grep -w 'login' application.log

// E. Count matching lines
# grep -c 'ERROR' application.log

// F. Display only matching words
# grep -o 'ERROR' application.log


// find and grep are powerful tools in shell scripting for searching files and patterns. By mastering these commands, you can efficiently locate files, filter content, and automate tasks in your scripts.
// here are some additional examples of using find and grep together:
# 1. Find all .log files and search for the string "ERROR" within them
# find /var/log -type f -name "*.log" -exec grep -H "ERROR" {} \;
# 2. Find all .txt files and search for the string "login" within them
# find /home/user/documents -type f -name "*.txt" -exec grep -H "login" {} \;
# 3. Find all .conf files and search for the string "server" within them, ignoring case
# find /etc -type f -name "*.conf" -exec grep -i "server" {} \; 


