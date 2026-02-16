# 📘 Journey Repository - Maintenance Guide

**PRIVATE DOCUMENT** — This file is hidden in `.github/` and not visible on the main repo page.

---

## 🎯 Purpose of This Repository

This is your **public portfolio** to showcase your cybersecurity journey to:
- 💼 Recruiters looking for penetration testers
- 🎓 Fellow security professionals and mentors
- 🔍 Google searches for "paolo costanzo penetration tester"
- 🌐 Remote employers in USA/UK/EU markets

**Key principle:** This repo is PUBLIC and professional. Keep OCC private for daily logs.

---

## 📅 Weekly Workflow (Every Sunday)

### Step 1: Complete Your TryHackMe Work (3-4 hours)
- Finish assigned modules/rooms for the week
- Take detailed notes during practice
- Screenshot important findings

### Step 2: Write Your Writeup (2-3 hours)
Follow the template in `writeups/TEMPLATE.md`

**Process:**
1. Open your notes from the week's THM room
2. Use the template structure:
   - Overview (what's the challenge?)
   - Reconnaissance (what did you find?)
   - Exploitation (how did you break in?)
   - Lessons Learned (what did you learn?)
3. Save as: `writeups/tryhackme/YYYY-MM-DD-room-name.md`
4. Publish to Medium (keep markdown here as backup)

**Quality checklist:**
- ✅ No direct answers/flags for active challenges
- ✅ Focus on methodology, not just commands
- ✅ Include screenshots (upload to imgur or similar)
- ✅ Explain WHY, not just WHAT

### Step 3: Create Weekly Report (30 minutes)
Use the template in `weekly-reports/TEMPLATE.md`

**File naming:** `weekly-reports/2026/week-XX.md`

**Content:**
```markdown
# Week XX - Feb 16-22, 2026

## 🎯 This Week's Focus
[Brief narrative about what you worked on]

## 📚 Completed
- THM: [Room Name] - [Key technique learned]
- Certifications: [Any progress]
- Skills practiced: [e.g., SQLi, XSS, privilege escalation]

## ✍️ Published
- [Writeup title](link to Medium)

## 📈 Stats Update
- THM Rank: #XXXX
- Rooms completed: XX
- Current streak: XX days

## 💡 Key Insight
[One sentence about the biggest lesson this week]

## ⏭️ Next Week
[What you'll focus on next]
```

### Step 4: Update Main README Stats (10 minutes)
Edit `README.md` and update:
- Total writeups count
- Latest writeup link
- Current THM rank
- Certifications progress

### Step 5: Commit & Push (5 minutes)
```bash
./scripts/weekly-commit.sh "Week XX completed"
```

---

## 🔄 Automation Scripts

### `scripts/new-weekly.sh`
Creates a new weekly report from template:
```bash
./scripts/new-weekly.sh
```
Output: `weekly-reports/2026/week-XX.md` pre-filled with dates

### `scripts/new-writeup.sh`
Creates a new writeup from template:
```bash
./scripts/new-writeup.sh "Room Name" thm
```
Output: `writeups/tryhackme/2026-02-16-room-name.md`

### `scripts/weekly-commit.sh`
Commits and pushes all changes:
```bash
./scripts/weekly-commit.sh "Meaningful commit message"
```

---

## 🎨 Content Guidelines

### ✅ DO:
- Share methodology and learning process
- Focus on educational value
- Link to your Medium articles
- Update regularly (consistency matters!)
- Showcase certifications and badges
- Be professional but authentic

### ❌ DON'T:
- Post active CTF flags or direct answers
- Share exploit code for real vulnerabilities
- Copy-paste from other writeups
- Over-share personal training plans (keep OCC private)
- Post low-quality content just to post
- Forget to proofread

---

## 📊 Monthly Maintenance

**First Sunday of each month:**
1. Review previous month's writeups (quality check)
2. Update certification badges if earned
3. Add any new tools/skills to README
4. Check for broken links
5. Update GitHub profile stats

---

## 🎓 Certification Tracking

When you earn a certification:
1. Download badge from issuer (Credly, etc.)
2. Save to `certifications/badges/cert-name.png`
3. Update `certifications/timeline.md`
4. Update main README with new badge
5. LinkedIn post → link in weekly report

---

## 🚀 Growth Metrics to Track

Track these in your weekly reports:
- **TryHackMe:** Rank, rooms completed, current streak
- **HackTheBox:** Rank (when you start), machines owned
- **Writeups:** Total published, Medium views/reads
- **Certifications:** Earned, in progress, planned
- **Skills:** New techniques mastered each month

---

## 🎯 Long-Term Goals

This repository should demonstrate:
1. **Consistency** — Regular weekly updates show dedication
2. **Growth** — Progressive difficulty in challenges tackled
3. **Communication** — Clear, professional writeups
4. **Expertise** — Increasing depth of security knowledge
5. **Commitment** — 30-month journey from beginner to OSCP

**Remember:** This is your public face to recruiters. Quality > Quantity.

---

## 💡 Pro Tips

1. **Sunday is sacred** — Block 3-5 hours every Sunday for journey work
2. **Duolingo daily** — 30-45 min for English (remote work requirement)
3. **Medium SEO** — Use tags: #cybersecurity #pentesting #ethicalhacking
4. **Network effect** — Engage with other writeup authors on Medium
5. **Portfolio building** — By month 17, you'll have 70+ writeups (powerful!)

---

## 📞 Questions?

If you forget the workflow:
1. Read this guide
2. Check templates in `writeups/TEMPLATE.md` and `weekly-reports/TEMPLATE.md`
3. Look at example files (week-07.md, example writeup)

**This guide last updated:** February 16, 2026
