#!/bin/bash

# Script to create a new weekly report from template
# Usage: ./scripts/new-weekly.sh

# Get current week number and year
YEAR=$(date +%Y)
WEEK=$(date +%V)

# Calculate date range for the week
START_DATE=$(date -d "monday this week" +"%B %d")
END_DATE=$(date -d "sunday this week" +"%B %d, %Y")

# File path
WEEKLY_DIR="weekly-reports/${YEAR}"
WEEKLY_FILE="${WEEKLY_DIR}/week-${WEEK}.md"

# Create directory if it doesn't exist
mkdir -p "$WEEKLY_DIR"

# Check if file already exists
if [ -f "$WEEKLY_FILE" ]; then
    echo "⚠️  Weekly report for Week ${WEEK} already exists!"
    echo "📄 File: ${WEEKLY_FILE}"
    read -p "Overwrite? (y/N): " confirm
    if [[ $confirm != [yY] ]]; then
        echo "❌ Cancelled"
        exit 1
    fi
fi

# Create the weekly report from template
cat > "$WEEKLY_FILE" << EOF
# Week ${WEEK} - ${START_DATE} to ${END_DATE}

## 🎯 This Week's Focus

[Brief narrative about what you worked on this week - 2-3 sentences about your main learning objectives]

---

## 📚 Completed This Week

### TryHackMe
- **Room:** [Room Name]
- **Topic:** [e.g., SQL Injection, XSS, Privilege Escalation]
- **Key Technique Learned:** [One sentence about the most important skill]

### Certifications Progress
- [Any study progress, practice exams, or milestones]

### Skills Practiced
- [Technique 1] - [Brief description]
- [Technique 2] - [Brief description]
- [Technique 3] - [Brief description]

---

## ✍️ Published Writeups

- 📝 [Writeup Title](link-to-medium-article) — [One sentence summary]

---

## 📈 Stats Update

| Metric | This Week | Change |
|--------|-----------|--------|
| **THM Rank** | #XXXX | ↑/↓ XX |
| **Rooms Completed** | XX total | +X |
| **Current Streak** | XX days | +7 |
| **Writeups Published** | XX total | +1 |

---

## 💡 Key Insight of the Week

> [One powerful lesson you learned this week - could be technical, methodological, or mindset-related]

**Why it matters:** [2-3 sentences explaining the impact of this insight]

---

## 🎓 Study Notes

### Technical Concepts Mastered
1. **[Concept 1]:** [Brief explanation]
2. **[Concept 2]:** [Brief explanation]
3. **[Concept 3]:** [Brief explanation]

### Tools Used
- \`[Tool 1]\` - [What you used it for]
- \`[Tool 2]\` - [What you used it for]

---

## 🐛 Challenges & Solutions

### Challenge
[Describe a specific obstacle you faced this week]

### How I Solved It
[Describe your approach to overcoming it - this shows problem-solving skills]

---

## 🌱 English Progress (Duolingo)

- **Daily streak:** [X days]
- **XP earned this week:** [XXX]
- **Focus areas:** [e.g., Technical vocabulary, Business English]

---

## ⏭️ Next Week's Goals

- [ ] TryHackMe: [Next room/module to complete]
- [ ] Publish writeup on [Topic]
- [ ] Study: [Certification material or specific topic]
- [ ] Practice: [Specific skill to focus on]

---

## 📊 Monthly Progress Tracker

**Month:** $(date +%B) ${YEAR}

| Week | THM Focus | Writeups | Milestones |
|------|-----------|----------|------------|
|      |           |          |            |

---

<div align="center">

**Week ${WEEK} completed** ✅ | Next update: $(date -d "next sunday" +"%B %d, %Y")

[← Previous Week](week-$((WEEK-1)).md) | [Next Week →](week-$((WEEK+1)).md)

</div>
EOF

echo "✅ Created weekly report for Week ${WEEK}"
echo "📄 File: ${WEEKLY_FILE}"
echo ""
echo "🔧 Next steps:"
echo "   1. Open ${WEEKLY_FILE}"
echo "   2. Fill in your week's accomplishments"
echo "   3. Run: git add ${WEEKLY_FILE}"
echo "   4. Run: git commit -m \"Week ${WEEK} report\""
echo "   5. Run: git push"
