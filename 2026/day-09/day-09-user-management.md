# Day 09 – Linux User & Group Management Challenge

## Task

Today's goal is to **practice user and group management** by completing hands-on challenges.

Figure out how to:
- Create users and set passwords
- Create groups and assign users
- Set up shared directories with group permissions


### Task 1: Create Users



- `tokyo`
- `berlin`
- `professor`
Command used : `useradd -m username`

### Task 2: Create Groups



Create two groups:
- `developers`
- `admins`
Command used : `


### Task 3: Assign to Groups

Assign users:
- `tokyo` → `developers`
- `berlin` → `developers` + `admins` (both groups)
- `professor` → `admins`



### Task 4: Shared Directory 

1. Create directory: `/opt/dev-project`
2. Set group owner to `developers`
3. Set permissions to `775` (rwxrwxr-x)
4. Test by creating files as `tokyo` and `berlin`


### Task 5: Team Workspace


1. Create user `nairobi` with home directory
2. Create group `project-team`
3. Add `nairobi` and `tokyo` to `project-team`
4. Create `/opt/team-workspace` directory
5. Set group to `project-team`, permissions to `775`
6. Test by creating file as `nairobi`
