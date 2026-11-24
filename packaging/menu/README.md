# Pitchstone Security Menu Organization

Goal: Make security tools feel professional and discoverable instead of a chaotic dump.

## Top-level Category

**Pitchstone Security**

### Subcategories

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
├─ Active Directory
└─ Reporting & Utilities
```

## Implementation

We will ship a set of `.directory` and `.desktop` files that place tools into these categories using the standard XDG menu system.

This is cleaner than Kali’s default menu and far better than a flat list of 200+ tools.

## Example structure (to be expanded)

```
/etc/xdg/menus/applications-merged/pitchstone-security.menu
/usr/share/desktop-directories/pitchstone-*.directory
/usr/share/applications/pitchstone-*.desktop   # or modified existing ones
```

The meta-packages will install the correct menu entries so that when a user installs `pitchstone-security-core`, the tools appear organized under the Pitchstone Security hierarchy automatically.
