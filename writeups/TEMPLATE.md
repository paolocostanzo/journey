# [Challenge/Room Name] - [Platform] Writeup

**Author:** Paolo Costanzo
**Date:** [Month Day, Year]
**Platform:** [TryHackMe / HackTheBox]
**Difficulty:** [Easy / Medium / Hard]
**Tags:** `[tag1]` `[tag2]` `[tag3]`

---

## 🎯 Overview

[2-3 sentences describing what this challenge is about. What skills does it test? What's the scenario?]

**Learning Objectives:**
- [Objective 1]
- [Objective 2]
- [Objective 3]

**Prerequisites:**
- Basic knowledge of [X]
- Understanding of [Y]
- Familiarity with [Z]

---

## 🔍 Reconnaissance / Enumeration

### Initial Scan

[Describe your reconnaissance approach]

```bash
# Command examples (sanitize any sensitive info)
nmap -sC -sV -oN scan.txt [TARGET]
```

**Key findings:**
- [Finding 1]
- [Finding 2]
- [Finding 3]

### Web Enumeration (if applicable)

```bash
gobuster dir -u http://[TARGET] -w /path/to/wordlist
```

**Discovered:**
- [Directory/file 1]
- [Directory/file 2]

---

## 🔐 Vulnerability Analysis

[Describe the vulnerability you identified]

**Vulnerability Type:** [e.g., SQL Injection, XSS, Buffer Overflow]

**How I Found It:**
[Explain your methodology - this is the most valuable part for learning]

**Why It's Exploitable:**
[Technical explanation of why this vulnerability exists]

---

## 💥 Exploitation

### Initial Access

[Describe how you gained initial access]

```bash
# Exploit command or script (sanitized)
[Your exploitation method]
```

**Result:**
[What you achieved - shell access, file read, etc.]

### Privilege Escalation (if applicable)

[Describe how you escalated privileges]

```bash
# Privilege escalation technique
[Your approach]
```

---

## 🚩 Flags

**Note:** I won't share exact flags here to preserve the learning experience.

**User Flag Location:** `[path/to/user.txt]`
**Root Flag Location:** `[path/to/root.txt]`

---

## 🎓 Lessons Learned

### Technical Takeaways

1. **[Lesson 1]**
   - [Explanation of what you learned]
   - [Why it's important]

2. **[Lesson 2]**
   - [Explanation of what you learned]
   - [Why it's important]

3. **[Lesson 3]**
   - [Explanation of what you learned]
   - [Why it's important]

### Tools Mastery

- **[Tool 1]:** [What you learned about using this tool effectively]
- **[Tool 2]:** [What you learned about using this tool effectively]

### Methodology Improvements

[Reflect on what you'd do differently next time, or what approach worked particularly well]

---

## 🛡️ Mitigation Strategies

[As a security professional, always think about defense]

**How to prevent this vulnerability:**
1. [Mitigation step 1]
2. [Mitigation step 2]
3. [Mitigation step 3]

**Best Practices:**
- [Best practice 1]
- [Best practice 2]

---

## 📚 Resources & References

- [Useful resource 1]
- [Useful resource 2]
- [Tool documentation]
- [Relevant CVE or security advisory]

---

## 💭 Final Thoughts

[Personal reflection on the challenge - what made it interesting, what frustrated you, what surprised you]

**Difficulty Rating (Personal):** ⭐⭐⭐☆☆

**Time Spent:** ~[X] hours

**Would Recommend For:** [Beginners / Intermediate / Advanced learners interested in [topic]]

---

<div align="center">

**Questions or feedback?** Reach out on [LinkedIn](https://linkedin.com/in/paolocostanzoit) or [Medium](https://medium.com/@paolocostanzo)

[🏠 Back to Journey](../../README.md) | [📅 Weekly Reports](../../weekly-reports/)

</div>
