# Day 02 – Basic + Advanced Linux Shell Scripting and User Managementfor DevOps Engineers

## Objective

Understand the **basics and advance of Linux Shell Scripting** and how it is used by DevOps engineers to automate tasks, handle inputs, and make decisions.

---

## ✍️ PART 1: WRITEUPS (Conceptual Understanding)

### 1. What is a Kernel?
### 2. What is a Shell?
### 3. What is Linux Shell Scripting?
### 4. Shell Scripting for DevOps (In Simple Words)
### 5. What is `#!/bin/bash`?
### 6. Creating directories dynamically using scripts is a **real-world example of automation**. Showcase how you did it!
### 7. Importance of Backups
### 8. Cron and Crontab (High-Level)
### 9. User Management in Linux


---

## 🛠️ PART 2: TASKS / EXERCISES (Hands-on Practice)

### Task 1: Conceptual Understanding. Read: LI Article
### Task 2: Basic Script

Write a shell script that prints:

```
I will be mastering the SKILL OF DEVOPS in 10 Weeks
```

---

### Task 3: User Input & Arguments

Write a shell script that:

* Takes input from the user
* Takes input from command-line arguments
* Prints all variables clearly

---

### Task 4: Conditional Logic

Write a shell script using **if-else** to:

* Compare two numbers
* Print which number is greater (or if they are equal)
  
---

### Task 5: Directory Creation Using Shell Script

Write a bash script named:

```
createDirectories.sh
```

The script should:

* Accept **3 arguments**:

  1. Directory name
  2. Start number
  3. End number
* Create directories dynamically using:

  * Loops
  * OR shell commands

#### Example 1

```bash
./createDirectories.sh day 1 90
```

Creates:

```
day1 day2 day3 ... day90
```

#### Example 2

```bash
./createDirectories.sh Movie 20 50
```

Creates:

```
Movie20 Movie21 Movie22 ... Movie50
```

📌 Hint: Use loops (`for`) or brace expansion.

---

### Task 6: Backup Script

Create a shell script that:

* Takes backup of all your work done till now
* Stores the backup in a separate directory
* Uses timestamps (recommended)

---

### Task 7: Automate Backup Using Cron

* Read about **cron** and **crontab**
* Understand how to:

  * Schedule jobs
  * Automate scripts
* (Execution is optional; understanding is mandatory)
---

### Task 8: User Management

* Create **2 new users**
* Display only their **usernames**

---
Content and Guidance credits to: **#90DaysOfDevOps with TrainWithShubham**

