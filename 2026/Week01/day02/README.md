# Day 04 – Basic Linux Shell Scripting for DevOps Engineers

Content and Guidance credits to: **#90DaysOfDevOps with TrainWithShubham**
Important Links: *#90DaysOfDevOps | TrainWithShubham**

## Objective

Understand the **basics of Linux Shell Scripting** and how it is used by DevOps engineers to automate tasks, handle inputs, and make decisions.

---

## ✍️ PART 1: WRITEUPS (Conceptual Understanding)

### 1. What is a Kernel?

The **kernel** is the core component of an operating system.
It has complete control over system resources such as:

* CPU
* Memory
* Disk
* Network
* Hardware devices

The kernel acts as a **bridge between hardware and software**, ensuring programs can run safely and efficiently.

---

### 2. What is a Shell?

A **shell** is a user-level program that provides an interface to interact with the operating system.

* It accepts **human-readable commands**
* Translates them into instructions the **kernel** understands
* Executes commands from:

  * Keyboard (terminal)
  * Script files

The shell starts when a user logs in or opens a terminal.

Examples of shells:

* bash
* sh
* zsh
* fish

---

### 3. What is Linux Shell Scripting?

Shell scripting is the practice of writing **scripts (files containing commands)** that are executed by a shell.

Shell scripts are commonly used to:

* Automate repetitive tasks
* Manage files and directories
* Run programs
* Set up environments
* Perform system administration

---

### 4. Shell Scripting for DevOps (In Simple Words)

For DevOps engineers, shell scripting means:

* Automating deployments
* Writing startup scripts
* Managing servers
* Handling CI/CD pipeline steps
* Debugging production issues quickly

Example use cases:

* Restarting failed services
* Cleaning logs
* Setting environment variables
* Automating backups

---

### 5. What is `#!/bin/bash`?

`#!/bin/bash` is called a **shebang**.

* It tells the system **which interpreter** should execute the script
* `/bin/bash` specifies the Bash shell

👉 Yes, you **can also use**:

```bash
#!/bin/sh
```

But:

* `bash` supports more features
* `sh` is more minimal and portable

In DevOps, **bash is most commonly used**.

---

## 🛠️ PART 2: TASKS / EXERCISES (Hands-on Practice)

### Task 1: Conceptual

* Explain in your own words what **Shell Scripting means for DevOps**
* Mention at least **one real DevOps use case**

---

### Task 2: Basic Script

Write a shell script that prints:

```
I will complete #90DaysOfDevOps challenge
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

### Task 5: Reflection

* Was shell scripting difficult?
* What part was confusing or interesting?

---

### Learn in Public (Recommended)

Share your Day 04 progress on LinkedIn:

* What you learned about shell scripting
* One script you found interesting
* Any challenge you faced

**Hashtags**

```
#90DaysOfDevOps
#DevOpsKaJosh
#TrainWithShubham
```

---

### Resources

* Article: Basic Linux Shell Scripting
* YouTube: *EASIEST Shell Scripting Tutorial for DevOps Engineers*

---

## ✅ Day 04 Outcome Checklist

* [ ] Understand kernel vs shell
* [ ] Know what shell scripting is
* [ ] Can write and run basic shell scripts
* [ ] Used if-else logic
* [ ] Shared learning publicly

---
# Day 05 – Advanced Linux Shell Scripting & User Management

**#90DaysOfDevOps | TrainWithShubham**

[← Previous Day](../day04/README.md) | [Next Day →](../day06/README.md)

---

## ✍️ PART 1: WRITEUPS (Conceptual Understanding)

### 1. Creating Multiple Directories Efficiently

When you see **90 directories created within seconds**, it’s a clear sign of **automation**.

Instead of creating directories manually:

* Linux allows **brace expansion**
* Shell scripts allow **loops + arguments**

This is a core DevOps mindset:

> *If something is repetitive, automate it.*

---

### 2. Why Shell Scripting Matters for DevOps

Shell scripting helps DevOps engineers to:

* Automate infrastructure tasks
* Standardize workflows
* Reduce human error
* Save time in large-scale systems

Creating directories dynamically using scripts is a **real-world example of automation**.

---

### 3. Importance of Backups

Backups are a **non-negotiable responsibility** of a DevOps engineer.

Why backups matter:

* Protect against accidental deletion
* Recover from failures
* Ensure business continuity

Most backup processes are:

* Automated
* Scheduled
* Logged

---

### 4. Cron and Crontab (High-Level)

* **Cron** is the Linux job scheduler
* **Crontab** is used to manage scheduled jobs

Cron allows scripts (like backups) to run:

* Automatically
* At fixed times
* Without human intervention

Automation + scheduling = reliability.

---

### 5. User Management in Linux

A **user** is an entity that can interact with the Linux system.

Key points:

* Root user → ID `0`
* System users → IDs `1–999`
* Local users → IDs `1000+`

User management is critical for:

* Security
* Access control
* Multi-user environments

---

## 🛠️ PART 2: TASKS / EXERCISES (Hands-on Practice)

### 🔹 Task 1: Directory Creation Using Shell Script

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

### 🔹 Task 2: Backup Script

Create a shell script that:

* Takes backup of all your work done till now
* Stores the backup in a separate directory
* Uses timestamps (recommended)

📌 Reference:

* Watch the backup automation video provided

---

### 🔹 Task 3: Automate Backup Using Cron

* Read about **cron** and **crontab**
* Understand how to:

  * Schedule jobs
  * Automate scripts
* (Execution is optional; understanding is mandatory)

📌 Reference:

* Cron & Crontab video

---

### 🔹 Task 4: User Management

* Create **2 new users**
* Display only their **usernames**

📌 Reference:

* User Management in Linux article

---

### 🔹 Task 5: Reflection & Sharing

* Were the tasks challenging?
* What part felt difficult or interesting?

Post your progress on **LinkedIn**:

* Share what you automated today
* Mention one learning from shell scripting or user management

Writing an article is **highly encouraged**.

---

## ✅ Day 05 Outcome Checklist

* [ ] Automated directory creation
* [ ] Understood scripting with arguments
* [ ] Learned backup fundamentals
* [ ] Introduced to cron scheduling
* [ ] Created and verified Linux users

---

