# Day 02 – Linux Basics & Internals

**#90DaysOfDevOps | TrainWithShubham**


---

## 🛠️ PART 1: TASKS (Exercises / What You Must Do)

### Task 1: Linux Basic Commands

Answer and practice the following:

1. **Check your present working directory**
2. **List all files and directories including hidden files**
3. **Create a nested directory structure:**

   ```
   A/B/C/D/E
   ```

📌 Reference:
Check `Linux_commands.md` in the same `day02` directory.

---

### Task 2: Linux Architecture & Process Understanding

Create a short note explaining:

* Core components of Linux:

  * Kernel
  * User space
  * init / systemd
* How processes are created and managed
* What systemd is and why it matters

---

### Expected Output

By the end of Day 02, you should have:

* ✅ Practiced basic Linux commands in terminal
* ✅ A markdown file named:

  ```
  linux-architecture-notes.md
  ```

  **OR**
* ✅ Handwritten notes (recommended)

---

### Submission Steps

1. Fork the `90DaysOfDevOps` repository
2. Navigate to `2026/day-02/`
3. Add:

   * `linux-architecture-notes.md`
   * `Linux_commands.md`
4. Commit and push your changes

---

## ✍️ PART 2: WRITE-UPS (Conceptual Understanding)

### Why Linux Matters in DevOps

Linux is the foundation of:

* Cloud VMs
* Containers
* Kubernetes nodes
* CI/CD runners

Understanding Linux internals helps you:

* Debug crashed services
* Identify CPU/memory bottlenecks
* Read logs and handle incidents confidently

---

### Linux Architecture (High Level)

* **Kernel**
  Handles CPU, memory, disk, networking, and hardware interaction
* **User Space**
  Where applications, shells, and tools run
* **init / systemd**
  First process started by the kernel; manages all services

---

### Processes & systemd

* Processes have states: running, sleeping, stopped, zombie
* `systemd` manages:

  * Service startup
  * Restarts
  * Dependencies
  * Logs

This knowledge is critical for production troubleshooting.

---

### Learn in Public (Optional but Recommended)

Share Day 02 progress on LinkedIn:

* What Linux concept you understood today
* One command you practiced


