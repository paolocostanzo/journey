#!/bin/bash

# Script to create a new writeup from template
# Usage: ./scripts/new-writeup.sh "Room Name" [thm|htb]

# Check arguments
if [ $# -lt 2 ]; then
    echo "Usage: $0 \"Room Name\" [thm|htb]"
    echo "Example: $0 \"Blue Room\" thm"
    exit 1
fi

ROOM_NAME="$1"
PLATFORM="$2"

# Validate platform
if [[ ! "$PLATFORM" =~ ^(thm|htb)$ ]]; then
    echo "❌ Platform must be either 'thm' (TryHackMe) or 'htb' (HackTheBox)"
    exit 1
fi

# Set platform full name
if [ "$PLATFORM" == "thm" ]; then
    PLATFORM_FULL="TryHackMe"
    PLATFORM_DIR="tryhackme"
else
    PLATFORM_FULL="HackTheBox"
    PLATFORM_DIR="hackthebox"
fi

# Generate filename (lowercase, spaces to hyphens)
DATE=$(date +%Y-%m-%d)
FILENAME=$(echo "$ROOM_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
WRITEUP_FILE="writeups/${PLATFORM_DIR}/${DATE}-${FILENAME}.md"

# Check if file already exists
if [ -f "$WRITEUP_FILE" ]; then
    echo "⚠️  Writeup for '${ROOM_NAME}' already exists!"
    echo "📄 File: ${WRITEUP_FILE}"
    read -p "Overwrite? (y/N): " confirm
    if [[ $confirm != [yY] ]]; then
        echo "❌ Cancelled"
        exit 1
    fi
fi

# Create the writeup from template
cat > "$WRITEUP_FILE" << EOF
# ${ROOM_NAME} - ${PLATFORM_FULL} Writeup

**Author:** Paolo Costanzo
**Date:** $(date +"%B %d, %Y")
**Platform:** ${PLATFORM_FULL}
**Difficulty:** [Easy / Medium / Hard]
**Tags:** \`[tag1]\` \`[tag2]\` \`[tag3]\`

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

\`\`\`bash
# Command examples (sanitize any sensitive info)
nmap -sC -sV -oN scan.txt [TARGET]
\`\`\`

**Key findings:**
- [Finding 1]
- [Finding 2]
- [Finding 3]

### Web Enumeration (if applicable)

\`\`\`bash
gobuster dir -u http://[TARGET] -w /path/to/wordlist
\`\`\`

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

\`\`\`bash
# Exploit command or script (sanitized)
[Your exploitation method]
\`\`\`

**Result:**
[What you achieved - shell access, file read, etc.]

### Privilege Escalation (if applicable)

[Describe how you escalated privileges]

\`\`\`bash
# Privilege escalation technique
[Your approach]
\`\`\`

---

## 🚩 Flags

**Note:** I won't share exact flags here to preserve the learning experience.

**User Flag Location:** \`[path/to/user.txt]\`
**Root Flag Location:** \`[path/to/root.txt]\`

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
EOF

echo "✅ Created writeup for '${ROOM_NAME}'"
echo "📄 File: ${WRITEUP_FILE}"
echo ""
echo "🔧 Next steps:"
echo "   1. Open ${WRITEUP_FILE}"
echo "   2. Fill in your writeup content"
echo "   3. Publish to Medium"
echo "   4. Run: git add ${WRITEUP_FILE}"
echo "   5. Run: git commit -m \"Writeup: ${ROOM_NAME}\""
echo "   6. Run: git push"
