# pitchstone-security-core (Draft)

This meta-package defines the essential security tooling that should be available by default or as a one-command install on Pitchstone OS.

## Philosophy

- High signal, low noise
- Tools that a working security professional or serious enthusiast actually uses regularly
- Well-organized in the application menu
- Prefer maintained Arch packages when quality is equal

## Proposed Contents (v0)

### Recon & Scanning
- nmap
- masscan
- rustscan (if available)
- whatweb
- httpx / nuclei (modern web recon)

### Network Analysis
- wireshark
- tshark
- tcpdump
- netcat / ncat

### Password & Hash
- hashcat
- john
- hydra

### Web Application
- burpsuite (or alternative community tooling)
- zap (OWASP ZAP)
- sqlmap
- ffuf / gobuster / feroxbuster

### Exploitation Frameworks
- metasploit (optional / heavier)
- searchsploit

### Wireless
- aircrack-ng suite
- bettercap (or modern equivalent)

### Forensics / Misc Essentials
- binwalk
- foremost / scalpel
- volatility3
- autopsy (heavier, maybe separate group)

### Supporting
- git, python, go, rust tooling as needed
- openvpn / wireguard clients
- gpg, age, etc.

## Organization in Menu

Security tools should appear under clear categories:

- Pitchstone Security → Recon
- Pitchstone Security → Web
- Pitchstone Security → Wireless
- Pitchstone Security → Password Attacks
- Pitchstone Security → Forensics
- etc.

## Next

- Turn this into actual PKGBUILD / package group
- Decide which tools are "core" vs "full" vs "optional"
- Research 2026 packaging status of each tool on Arch
