
# Day 21 – Shell Scripting Cheat Sheet: Build Your Own Reference Guide


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
