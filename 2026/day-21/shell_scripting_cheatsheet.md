
# Day 21 – Shell Scripting Cheat Sheet: Build Your Own Reference Guide

### Task 8: Bonus — Quick Reference Table

| Topic | Syntax | Example |
|------|------|------|
| Variable | VAR="value" | NAME="DevOps" |
| Argument | $1 $2 | ./script.sh arg1 |
| If condition | if [ condition ]; then | if [ -f file ]; then |
| For loop | for i in list | for i in 1 2 3 |
| Function | name() { } | greet() { echo "Hi"; } |
| Grep | grep pattern file | grep -i "error" log.txt |
| Awk | awk '{print $1}' | awk -F: '{print $1}' /etc/passwd |
| Sed | sed 's/old/new/g' | sed -i 's/foo/bar/g' config.txt |

---

### Task 1: Basics
Document the following with short descriptions and examples:

1. Shebang (`#!/bin/bash`) — what it does and why it matters

- Sheband is the first line writen in the script which define the path_to_interpreter 

```bash
#!/bin/bash
```

2. Running a script — `chmod +x`, `./script.sh`, `bash script.sh`

- `chmod +x` ---> This command is use to give Excute Permission for File and Scripts

- `./script.sh` ---> Its used to run the Script 

- `bash script.sh` ---> Run the Script by `bash` interpreter

3. Comments — single line (`#`) and inline

- This `#` is use to comment any line

```bash
# This is single line comment 
echo "Hello"  # This is Inline comment
```

- For example in script there 2 function but i want to run only one function for now i will just comment that function it will run only which function is not comment  

4. Variables — declaring, using, and quoting (`$VAR`, `"$VAR"`, `'$VAR'`)

```bash
Designation="Devops Engineer"
echo 'I am $Designation'
```
- Double quotes `""` allow variable expansion  
- Single quotes `''` it treat as literal string value 


5. Reading user input — `read`

```bash
read -p "Enter the Servivce_name:" service_name 
```
- `read` is use to take input from user 


6. Command-line arguments — `$0`, `$1`, `$#`, `$@`, `$?`

- `0`  ---> Name of Script 
- `$1` ---> First Arguments to script
- `$#` ---> Number of argument 
- `$@` ---> all arguments
- `$?` ---> Last command status

---

### Task 2: Operators and Conditionals

1. String comparisons — `=`, `!=`, `-z`, `-n`
- `=`  Equal  ---> Check if two string are equal 
- `!=` Not Equal ---> Check if two string not equal
- `-z` zero length ---> To check if the string is empty
- `-n` Non-zero length ---> To check if the string is not empty
```bash
name="Danish"
[ "$name" = "Danish" ]

name="Danish"
[ "$name" != "Jabbar" ]

empty=""
[ "$name" -z "$empty" ]

name="Danish"
[ "$name" -n "$name" ]
```

2. Integer comparisons — `-eq`, `-ne`, `-lt`, `-gt`, `-le`, `-ge`

- `-eg` ---> Equal to 
- `-ne` ---> Not equal to 
- `-lt` ---> Less than
- `-gt` ---> Greater than
- `-le` ---> Less than or equal to 
- `-ge` ---> Greater than or equal to

```bash
num=9
[ $num -gt 10 ]

num=9
[ $num -ne 10 ]

num=9
[ $num -lt 10 ]

num=9
[ $num -le 10 ]

num=9 
[$num -gt 10 ]

num=9 
[$num -ge 10 ]
```

3. File test operators — `-f`, `-d`, `-e`, `-r`, `-w`, `-x`, `-s`

- `-f`  ---> Check if the regular file exist
- `-d` ---> Check if directory exist 
- `-e` ---> Check if the file or directory exist
- `-r`  ---> Check if the file has the read permission
- `-w` ---> Check if the file has write permission 
- `-x` ---> Check if the file has execute permission
- `-s` ---> To check if the file is exist and had a size greater than zero

```bash
[ -f file.txt ]
[ -d Devops ]
[ -e file.txt]
[ -r file.txt]  
[ -w file.txt]  
[ -x file.txt]  
[ -s file.txt]  
``` 


4. `if`, `elif`, `else` syntax

- `if`   ---> It check the condition if its true or not
- `elif` ---> It check condition only oncethe previous were false
- `else` ---> It run if none of conditions were True

```bash
Path_to_check="log.txt"

if [-d "$path_to_check"]; then
    echo "This is a Directory"

elif [-f "$path_to_check"]; then
    echo "This is a File"

else 
    echo "This Path does not Exist"
```

5. Logical operators — `&&`, `||`, `!`

- `&&` ---> It will run the next command if it find previous is True  

- `||` ---> It will run the next command if it find previous command is False

- `!` ---> If the condition is true it becomes false and if its false it become true 

6. Case statements — `case ... esac`

```bash 
echo "Choose the Service: [start, stop, restart]"
read -p "choose_service: " service

case "$service" in
    start)
        systemctl start service ;;
    stop)
        systemctl stop service  ;;
    restart)
        systemctl restart service ;;
    status)
        systemctl status service ;;
    *)
    echo "usecase: start | stop | restart | status" ;;
esac
```

### Task 3: Loops

1. `for` loop — list-based and C-style

- It used to iterate over a list of items
```bash
# Prints numbers from 1 to 5
for i in {1..5}; do
    echo "Count: $i"
done
```

2. `while` loop
- The statement used to repeatedly execute a block of commands as long as a specified condition remains true

```bash
n=1
while [ $n -le 3 ]; do
    echo $n
    ((n++))
done
```

3. `until` loop

- a programming control structure that repeatedly executes condition evaluates to false

```bash
n=1
until [ $n -gt 3 ]; do
    echo $n
    ((n++))
done
```

4. Loop control — `break`, `continue`

- `break` ---> break immediately exits a loop
- `continue` ---> skips the current iteration and jumps to the next one.

```bash
for i in {1..5}; do
    [ $i -eq 2 ] && continue  # Skip the number 2
    [ $i -eq 4 ] && break     # Stop the loop at 4
    echo $i
done
```

5. Looping over files — `for file in *.log`

- his construct iterates through every file in the current directory ending in .log

```bash
for file in *.log; do
    echo "Found log file: $file"
done
```

6. Looping over command output — `while read line`

- This construct captures the output of a command or file and processes it one line at a time by assigning each line to the variable $line

```bash
ls *.txt | while read line; do
    echo "Found item: $line"
done
```
---

### Task 4: Functions

1. Defining a function — `function_name() { ... }`
- A function is a reusable block that we can define once and call multiple times by its name

```bash
greet() {
    echo "Hello, $1!"
}
```

2. Calling a function

```bash
greet "User"
```

3. Passing arguments to functions — `$1`, `$2` inside functions

- n shell functions, $1, $2, etc., act as positional parameters that represent the first, second, and subsequent arguments passed to the function when it is called

```bash
greet() {
    echo "Hello, $1! Welcome to $2."
}

# Passing two arguments
greet "User" "India"
```
4. Return values — `return` vs `echo`
- Use return for a status code (0–255) & echo gives a value you can use in a variable

```bash
# Using 'return' for status (success/failure)
check_user() {
    [ "$1" == "admin" ] && return 0 || return 1
}

# Using 'echo' for data (returning a result)
get_greeting() {
    echo "Hello, $1!"
}

# Capture data from echo
result=$(get_greeting "User")
echo "$result"

# Check exit status from return
if check_user "admin"; then
    echo "Access granted."
fi
```

5. Local variables — `local`

- local keyword is used inside a function to ensure a variable is contained within that function's scope 

```bash
name="Original"
show_name() {
    local name="Local"
    echo "Inside: $name"
}

show_name
echo "Outside: $name"
```
---

### Task 5: Text Processing Commands
Document the most useful flags/patterns for each:
1. `grep` — search patterns, `-i`, `-r`, `-c`, `-n`, `-v`, `-E`

- -i: Ignore case.

- -r: Recursive search in directories

- -c: Count matching lines

- -n: Show line numbers

- -v: Invert match (show lines not containing the pattern)

- -E: Use extended regex (allows |, +, ?)

```bash
# 1. -i: Case-insensitive search (finds "Error", "ERROR", "error")
grep -i "error" file.txt

# 2. -r: Recursive search (searches current directory and all sub-directories)
grep -r "error" .

# 3. -c: Count matching lines
grep -c "error" file.txt

# 4. -n: Show line numbers where match is found
grep -n "error" file.txt

# 5. -v: Invert match (show all lines NOT containing "error")
grep -v "error" file.txt

# 6. -E: Extended regex (searching for "error" OR "warning")
grep -E "error|warning" file.txt
```

2. `awk` — print columns, field separator, patterns, `BEGIN/END`
- It Process and extract text from files or input,especially by columns/fields.

```bash
# Print name ($1) and score ($2) if score is over 80
awk -F',' '$2 > 80 {print $1 " scored " $2}' data.txt
```

3. `sed` — substitution, delete lines, in-place edit

- To edit or transform text streams like replacing,deleting, or modifying lines

```bash
sed -i 's/Dan/Danish/g' data.txt
```

4. `cut` — extract columns by delimiter

- Extract specific columns or fields from text using a delimiter

```bash
cut -c 1-2 data.txt
```
5. `sort` — alphabetical, numerical, reverse, unique

- Arrange lines in a file alphabetically,numerically,reverse,or remove duplicates

```bash
sort -nu data.txt
```

6. `uniq` — deduplicate, count

- Removes consecutive duplicate lines,also count occurrences

```bash
uniq -u data.txt
```
7. `tr` — translate/delete characters
- Translates/deletes characters from input.

```bash
tr 'a-z' 'A-Z' < data.txt
```
8. `wc` — line/word/char count

- Provides counts for lines,words, or characters in a file

```bash
wc -l data.txt
```
9. `head` / `tail` — first/last N lines, follow mode

- Head Display the first 
- Tail Display the last 

```bash 
head -n 1 data.txt
tail -n 1 data.txt
```

---

### Task 6: Useful Patterns and One-Liners
Include at least 5 real-world one-liners you find useful. Examples:
- Find and delete files older than N days
```bash
find /var/log/archive -type f -mtime +30 -delete
```
- Count lines in all `.log` files
```bash
cat *.log | wc -l
```

- Replace a string across multiple files
```bash
sed -i 's/db.oldserver.com/db.newserver.com/g' /etc/myapp/conf.d/*.conf
```

- Check if a service is running

```bash
systemctl status < Service >
```
- Monitor disk usage with alerts

```bash
df -h | awk '$5+0 > 80 {print $0}' | mail -s "Disk Usage Alert on $(hostname)" your.email@example.com
```

- Parse CSV or JSON from command line

-  For JSON
```bash 
jq -r '.name' data.json
```
- For CSV
```bash
csvcut -c email users.csv | tail -n +2
```

- Tail a log and filter for errors in real time

```bash
tail -f /var/log/syslog | grep -E 'ERROR|CRITICAL'
```

---


### Task 7: Error Handling and Debugging
Document with examples:
1. Exit codes — `$?`, `exit 0`, `exit 1`

`?` --->  A special variable that holds the exit status of the last executed command

`exit 0` --->  Explicitly tells the shell the script run successfully

`exit 1` ---> Used to signal a general error

```bash
#!/bin/bash

ls log_2027.txt

echo "Exit status of ls command: $?"

if [ -f log_2027.txt ]; then
    echo "File exists"
    exit 0
else
    echo "File does not exist"
    exit 1
fi
```


2. `set -e` — exit on error

```bash
#!/bin/bash
set -e
# If this command fails, the script stops immediately
rm /protected_file 
echo "This line is skipped if rm fails."
````
3. `set -u` — treat unset variables as error

```bash 
#!/bin/bash
set -u
echo "The value is: $UNDEFINED_VAR"
# Output: line 3: UNDEFINED_VAR: unbound variable
```

4. `set -o pipefail` — catch errors in pipes
```bash
#!/bin/bash
set -o pipefail
# Even if 'cat' fails, without pipefail, the exit code is 0 (from 'grep')
cat non_existent_file | grep "pattern"
echo "Exit code: $?" # Returns non-zero due to pipefail
```

5. `set -x` — debug mode (trace execution)

```bash 
#!/bin/bash
set -x
NAME="World"
echo "Hello, $NAME"
set +x # Turn off debugging
```
6. Trap — `trap 'cleanup' EXIT`

```bash
#!/bin/bash

# Define cleanup function
cleanup() {
    echo "Cleaning up temporary files..."
    rm -f /tmp/myscript_temp.txt
}

# Trap EXIT signal to call cleanup
trap 'cleanup' EXIT

echo "Doing work..."
touch /tmp/myscript_temp.txt
exit 0
```

---
