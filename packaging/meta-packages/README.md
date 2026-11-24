# Pitchstone OS — Security Packaging Strategy

## Core Decision

We will **not** reinvent 2,800 tools.

Instead we use a layered approach:

1. **Arch official repositories** — first choice for well-maintained tools
2. **BlackArch repository** — the established, high-quality Arch security tools collection (2,800+)
3. **Pitchstone meta-packages** — our curated, opinionated groups that install the right tools cleanly and organize them in the menu

This gives us Kali-level depth with Arch modernity and a much better user experience than dumping everything.

---

## Recommended Groups

### 1. `pitchstone-security-core` (Default / Recommended)
Essential daily-driver security tools. Should feel complete for most professional and enthusiast use without overwhelming the system.

### 2. `pitchstone-pentest`
Broader offensive toolkit. Builds on core.

### 3. `pitchstone-forensics`
Digital forensics and incident response focused.

### 4. `pitchstone-wireless`
Wireless auditing and related tools.

### 5. `pitchstone-security-full`
Meta that pulls in the above + additional BlackArch groups for users who want near-complete coverage.

Users can also install any individual BlackArch tool or group directly (`blackarch-webapp`, `blackarch-exploitation`, etc.).

---

## BlackArch Integration

During installation or via a simple post-install script we will:

- Offer to enable the BlackArch repository (recommended)
- Keep it optional so pure desktop users are not forced into it
- Document how to enable/disable cleanly

Enabling BlackArch is the single highest-leverage decision for security tool availability on Arch.

---

## Menu Organization Goal

All Pitchstone security tools should appear under a clean top-level category:

```
Pitchstone Security
├─ Recon & Scanning
├─ Web Application
├─ Password Attacks
├─ Exploitation
├─ Wireless
├─ Forensics & IR
├─ Sniffing & Spoofing
├─ Reverse Engineering
└─ Reporting & Misc
```

This is significantly better than Kali's sometimes chaotic menu or a flat list of hundreds of tools.
