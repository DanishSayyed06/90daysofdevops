# Day 38 – YAML Basics

### Task 1: Key-Value Pairs
Create `person.yaml` that describes yourself with:
- `name`
- `role`
- `experience_years`
- `learning` (a boolean)

**Verify:** Run `cat person.yaml` — does it look clean? No tabs?

<img width="519" height="332" alt="Screenshot 2026-06-25 at 7 13 53 PM" src="https://github.com/user-attachments/assets/8c252d23-c886-4d4e-b5a9-f61c73182386" />


---

### Task 2: Lists
Add to `person.yaml`:
- `tools` — a list of 5 DevOps tools you know or are learning
- `hobbies` — a list using the inline format `[item1, item2]`

Write in your notes: What are the two ways to write a list in YAML?

``` bash
tools:
  - git
  - Docker

```

``` bash

tools:["git", "Docker"]

```

---

### Task 3: Nested Objects
Create `server.yaml` that describes a server:
- `server` with nested keys: `name`, `ip`, `port`
- `database` with nested keys: `host`, `name`, `credentials` (nested further: `user`, `password`)

**Verify:** Try adding a tab instead of spaces — what happens when you validate it?

- It took  Indentation
  
---

### Task 4: Multi-line Strings
In `server.yaml`, add a `startup_script` field using:
1. The `|` block style (preserves newlines)
2. The `>` fold style (folds into one line)

Write in your notes: When would you use `|` vs `>`?

-  `>` ---> When i want write in one line
-  `|`--->  When writing configurations,scripts or formatted text blocks
---

### Task 5: Validate Your YAML
1. Install `yamllint` or use an online validator
2. Validate both your YAML files
3. Intentionally break the indentation — what error do you get?
4. Fix it and validate again

<img width="850" height="438" alt="Screenshot 2026-06-25 at 8 20 30 PM" src="https://github.com/user-attachments/assets/c2513f39-cf4f-4cfc-90e2-06fae79c5804" />


---

### Task 6: Spot the Difference
Read both blocks and write what's wrong with the second one:

```yaml
# Block 1 - correct
name: devops
tools:
  - docker
  - kubernetes
```

```yaml
# Block 2 - broken
name: devops
tools:
- docker
  - kubernetes
```

- Indentation
--- 
