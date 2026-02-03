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