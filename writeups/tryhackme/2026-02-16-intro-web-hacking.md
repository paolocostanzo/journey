# Introduction to Web Hacking - TryHackMe Writeup

**Author:** Paolo Costanzo
**Date:** February 16, 2026
**Platform:** TryHackMe
**Difficulty:** Easy
**Tags:** `web-security` `http` `reconnaissance` `fundamentals`

---

## 🎯 Overview

This module introduces the foundational concepts of web application security testing. It covers how web applications work under the hood, the HTTP protocol, and the methodical approach needed for effective penetration testing.

**Learning Objectives:**
- Understand HTTP request/response structure
- Identify common web application components
- Learn reconnaissance techniques for web targets
- Practice systematic documentation for findings

**Prerequisites:**
- Basic understanding of how websites work
- Familiarity with browser developer tools
- Command line comfort (optional but helpful)

---

## 🔍 Understanding Web Application Architecture

### The Client-Server Model

Before attempting to exploit a web application, you need to understand how it's structured. Modern web apps follow a client-server architecture:

**Client Side (Browser):**
- HTML/CSS for structure and styling
- JavaScript for interactivity
- Makes requests to the server

**Server Side (Backend):**
- Processes requests from clients
- Interacts with databases
- Returns responses (HTML, JSON, etc.)

**Key Insight:** Vulnerabilities can exist on either side. Client-side validation can be bypassed, and server-side code can have injection flaws.

---

## 🌐 HTTP Protocol Fundamentals

### Request Structure

Every web interaction is an HTTP request. Understanding its components is crucial:

```http
GET /login.php HTTP/1.1
Host: vulnerable-site.com
User-Agent: Mozilla/5.0
Cookie: session=abc123
Accept: text/html
```

**Breaking it down:**
- **Method:** GET (also POST, PUT, DELETE, etc.)
- **Path:** /login.php (the resource requested)
- **Host:** The target server
- **Headers:** Metadata about the request
- **Cookies:** Session identifiers (critical for authentication)

### Response Structure

```http
HTTP/1.1 200 OK
Content-Type: text/html
Set-Cookie: session=xyz789
Content-Length: 1234

<html>...</html>
```

**Why this matters:** Headers can leak information (server versions, frameworks), and cookies control authentication state.

---

## 🔐 Reconnaissance Methodology

### Step 1: Passive Information Gathering

Before actively probing a target, gather publicly available information:

**Using Browser DevTools:**
1. Open Network tab (F12)
2. Load the target website
3. Examine all requests/responses
4. Note interesting endpoints, parameters, headers

**What to look for:**
- Hidden form fields or parameters
- Comments in HTML source code
- JavaScript files (may contain API endpoints)
- Error messages revealing technology stack

### Step 2: Technology Fingerprinting

Identifying the tech stack helps focus your testing:

**Common indicators:**
- `X-Powered-By` header → Server technology
- Cookie names → Framework (PHPSESSID, JSESSIONID)
- URL patterns → Content Management Systems
- File extensions → Server-side language (.php, .asp, .jsp)

**Example from practice:**
```
X-Powered-By: PHP/7.4.3
Set-Cookie: PHPSESSID=abc123
```
→ This tells me the server runs PHP 7.4.3, and I should look for PHP-specific vulnerabilities.

---

## 💡 Practical Exercise: Mapping a Web Application

### Challenge
Given a web application, systematically map all accessible pages and functionality.

### My Approach

**1. Manual Browsing:**
- Clicked through all visible links
- Checked footer, sitemap, robots.txt
- Examined all form inputs

**2. Developer Tools Analysis:**
```
Network Tab → All Requests
Observed patterns:
- /api/users → API endpoint (interesting!)
- /admin/login → Hidden admin panel
- /assets/js/main.js → Frontend logic
```

**3. Directory Discovery (Conceptual):**
While I didn't run tools in this module, the methodology was taught:
```bash
# Example (not run):
gobuster dir -u http://target.com -w wordlist.txt
```

**Key Finding:** The `/api/users` endpoint was not linked anywhere on the frontend, but visible in Network tab. This is a common pattern—hidden API endpoints accessible without proper authentication.

---

## 🎓 Lessons Learned

### Technical Takeaways

1. **HTTP is Stateless**
   - Every request is independent
   - Cookies/tokens maintain "sessions"
   - This creates authentication vulnerabilities if not implemented correctly

2. **Client-Side Validation Is Cosmetic**
   - JavaScript validation can be bypassed by intercepting requests
   - Never trust client-side input validation
   - Server must always validate

3. **Reconnaissance Is 80% of the Work**
   - Methodical enumeration finds vulnerabilities automated tools miss
   - Understanding the application's logic is more valuable than running exploits
   - Good notes during recon save hours later

### Tools Mastery

- **Browser DevTools:** The most underrated security testing tool. Network tab reveals everything the application does.
- **Burp Suite (Intro):** Even in passive mode, intercepting requests shows how applications really work behind the scenes.

### Methodology Improvements

**What worked well:**
- Taking screenshots of every interesting finding
- Organizing notes by application section (login, API, admin)
- Drawing a simple diagram of how pages connect

**What I'll improve next time:**
- Start with a checklist template to ensure I don't miss reconnaissance steps
- Use a markdown file during practice to make writeup creation faster

---

## 🛡️ Mitigation Strategies

Even as a beginner module, this taught me to think like a defender:

**How to build secure web applications:**
1. **Never trust user input** - Validate on the server side, always
2. **Minimize information disclosure** - Remove version headers, generic error messages
3. **Follow the principle of least privilege** - APIs shouldn't be accessible without authentication
4. **Use secure session management** - HTTPOnly cookies, HTTPS enforcement

**Best Practices:**
- Implement proper authentication on ALL endpoints (including APIs)
- Use framework-provided security features (CSRF tokens, input sanitization)
- Regular security audits and penetration testing

---

## 📚 Resources & References

- [MDN Web Docs: HTTP](https://developer.mozilla.org/en-US/docs/Web/HTTP)
- [OWASP Top 10](https://owasp.org/www-project-top-ten/)
- [PortSwigger Web Security Academy](https://portswigger.net/web-security)
- [HTTP Status Codes Reference](https://httpstatuses.com/)

---

## 💭 Final Thoughts

This module reinforced that web application security isn't about memorizing exploits—it's about understanding systems. When you truly understand how HTTP works, how sessions are managed, and how modern web apps are architected, vulnerabilities become obvious.

**The most powerful tool in web hacking isn't Metasploit or Burp Suite—it's your browser's DevTools and your ability to think critically about what you observe.**

**Difficulty Rating (Personal):** ⭐⭐☆☆☆

**Time Spent:** ~3 hours (with extensive note-taking)

**Would Recommend For:** Anyone starting their web security journey. This is essential foundation before diving into specific vulnerabilities like SQLi or XSS.

---

## 🔗 Related Writeups

*Coming soon:*
- SQL Injection fundamentals
- Cross-Site Scripting (XSS) basics
- Authentication bypass techniques

---

<div align="center">

**Questions or feedback?** Reach out on [LinkedIn](https://linkedin.com/in/paolocostanzoit) or [Medium](https://medium.com/@paolocostanzo)

[🏠 Back to Journey](../../README.md) | [📅 This Week's Report](../../weekly-reports/2026/week-07.md)

</div>
