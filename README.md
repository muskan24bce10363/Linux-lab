# Linux-lab
This project contains 5 Linux shell scripts created and executed on a real Linux environment. Each script demonstrates basic shell scripting concepts such as loops, variables, and working with log files.
## 👩‍🎓 Student Details
Name: Muskan Mathur<br>
Roll Number: 24BCE10363<br>
Chosen Software: Linux Kernel<br>
## 📌 Project Overview

This project consists of 5 Linux shell scripts developed as part of the Open Source Software course. Each script demonstrates important shell scripting concepts such as variables, loops, conditionals, file handling, and user interaction. All scripts are designed to run in a Linux environment such as a local Linux system.
## 📂 Scripts Description
### 🔹 Script 1 — System Identity Report

Displays system information including Linux distribution, kernel version, current user, home directory, uptime, date/time, and license details.
Concepts used: Variables, command substitution $(), echo, formatting.
### 🔹 Script 2 — FOSS Package Inspector

Checks whether the Linux kernel is present and displays its version and system details. It also prints a philosophical note using a case statement.
Concepts used: if-then-else, case, variables, system commands (uname).

### 🔹 Script 3 — Disk and Permission Auditor

Loops through important system directories and reports their disk usage, permissions, and ownership. Also checks kernel configuration directory.
Concepts used: for loop, if condition, du, ls -ld, awk, cut.
### 🔹 Script 4 — Log File Analyzer

Reads a log file line by line, counts occurrences of a keyword (like error), and displays a summary along with the last 5 matching lines.
Concepts used: while read loop, if-then, counters, command-line arguments, grep, tail.
### 🔹 Script 5 — Open Source Manifesto Generator

Takes user input interactively and generates a personalized open-source philosophy statement, saving it to a text file.
Concepts used: read, string concatenation, file writing (> and >>), date, cat.

## ⚙️ Requirements / Dependencies
Linux environment (Ubuntu / GitHub Codespaces)<br>
Bash shell<br>
Basic Linux utilities:<br>
uname, whoami, date, du, ls, grep, awk, cut, tail<br>

## ▶️ How to Run the Scripts
### Step 1: Open Terminal

Open terminal in Linux or GitHub Codespaces.

### Step 2: Navigate to Project Folder
cd your-repository-name
### Step 3: Give Execution Permission
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
### Step 4: Run Each Script
#### ▶ Script 1
./script1.sh
#### ▶ Script 2
./script2.sh
#### ▶ Script 3
./script3.sh
#### ▶ Script 4
./script4.sh /var/log/dpkg.log

#### ▶ Script 5
./script5.sh
## 💾 Saving Changes to GitHub
git add .<br>
git commit -m "Added shell scripting project"<br>
git push
## 🎯 Conclusion

This project provides hands-on experience with Linux shell scripting and demonstrates how open-source tools like the Linux kernel can be explored using automation. It highlights the power of scripting in system analysis, monitoring, and user interaction.
