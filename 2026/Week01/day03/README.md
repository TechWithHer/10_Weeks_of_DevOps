### 1. Linux File Permissions – Core Concept

* Every file/directory has **three permission types**:

  * **Read (r)** – view content
  * **Write (w)** – modify content
  * **Execute (x)** – run file / access directory
* Permissions apply to **three categories**:

  * **Owner** – creator of the file
  * **Group** – group assigned to the file
  * **Others** – everyone else on the system
* Permission format:

  ```
  -rwxr-xr--
  ```

### 2. Ownership & Permission Commands

* `ls -ltr` → view permissions, owner, group
* `chmod` → change permissions
* `chown` → change owner
* `chgrp` → change group

### 3. Access Control Lists (ACL)

* ACL allows **fine-grained permissions** beyond owner/group/others
* Useful when:

  * Multiple users need different permissions
  * You don’t want to change ownership or groups
* Commands:

  * `getfacl` → view ACL
  * `setfacl` → set ACL

### 4. Special Permissions

* **Sticky Bit** → protects files in shared directories
* **SUID** → run program with owner’s privileges
* **SGID** → inherit group ownership

### 5. Backup & Restore Permissions

* Permissions can be **backed up and restored**
* Important during migrations, audits, or recovery

---

## 🛠️ **TASKS / EXERCISES (Hands-On Practice)**

---

### 🔹 Task 1: Understand Basic Permissions

```bash
touch demo.txt
ls -ltr
```

Change permissions and observe:

```bash
chmod 644 demo.txt
chmod 700 demo.txt
ls -ltr
```

---

### 🔹 Task 2: Ownership & Group Changes

```bash
sudo chown user1 demo.txt
sudo chgrp devops demo.txt
ls -ltr
```

---


### 🔹 Task 3: Access Control Lists (ACL)

```bash
mkdir acl_test
touch acl_test/file.txt
```

Set ACL:

```bash
setfacl -m u:user2:r acl_test/file.txt
setfacl -m g:devops:rw acl_test/file.txt
```

Verify:

```bash
getfacl acl_test/file.txt
```

---

### 🔹 Task 4: Script – Change Permissions in Bulk

```bash
#!/bin/bash
read -p "Enter directory: " dir
read -p "Enter permission (e.g. 755): " perm

chmod -R $perm $dir
```

---

### 🔹 Task 6: Script – Set ACL Using User Input

```bash
#!/bin/bash
read -p "Enter file name: " file
read -p "Enter username: " user
read -p "Enter permission (r/w/rw): " perm

setfacl -m u:$user:$perm $file
getfacl $file
```

---

### 🔹 Task 7: Sticky Bit, SUID, SGID Examples

**Sticky Bit**

```bash
mkdir shared
chmod 1777 shared
```

**SUID**

```bash
chmod u+s /usr/bin/passwd
```

**SGID**

```bash
mkdir project
chmod g+s project
```

📌 Explain:

* Why they exist
* Where they are used in real systems

---

### 🔹 Task 8: Backup & Restore Permissions

**Backup**

```bash
getfacl -R mydir > perms.backup
```

**Restore**

```bash
setfacl --restore=perms.backup
```

---
