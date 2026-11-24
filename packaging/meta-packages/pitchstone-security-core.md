# pitchstone-security-core

**Purpose**: The essential, high-signal security toolkit that should feel complete for daily professional and serious enthusiast use.

This package prioritizes quality and usefulness over quantity.

---

## Tool List (v1 Draft)

### Recon & Scanning
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| nmap              | Official Arch   | Essential |
| masscan           | Official / BlackArch | Fast scanning |
| rustscan          | AUR / BlackArch | Modern fast scanner |
| whatweb           | BlackArch       | Web tech fingerprinting |
| httpx             | BlackArch / AUR | Fast HTTP toolkit |
| nuclei            | BlackArch / AUR | Vulnerability scanner |
| amass             | BlackArch       | Attack surface mapping |
| subfinder         | BlackArch       | Subdomain discovery |

### Network Analysis & Sniffing
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| wireshark-qt      | Official Arch   | GUI packet analysis |
| tshark            | Official Arch   | CLI |
| tcpdump           | Official Arch   | Classic |
| bettercap         | BlackArch       | Modern Swiss army knife |
| netcat / ncat     | Official        | |
| socat             | Official        | |

### Web Application
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| burpsuite         | BlackArch / AUR | Community edition |
| zaproxy           | Official / BlackArch | OWASP ZAP |
| sqlmap            | Official / BlackArch | |
| ffuf              | BlackArch       | Fast web fuzzer |
| gobuster          | BlackArch       | |
| feroxbuster       | BlackArch       | |
| nikto             | BlackArch       | |
| wpscan            | BlackArch       | WordPress |
| arjun             | BlackArch       | Parameter discovery |

### Password Attacks
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| hashcat           | Official Arch   | GPU cracking |
| john              | Official Arch   | |
| hydra             | Official / BlackArch | Online attacks |
| medusa            | BlackArch       | |
| hash-identifier   | BlackArch       | |
| seclists          | BlackArch       | Wordlists |

### Exploitation & Frameworks
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| metasploit        | BlackArch       | Optional weight, but expected |
| searchsploit      | BlackArch       | Exploit-DB |
| pwntools          | Official / BlackArch | |
| ropper / ropgadget| BlackArch       | |

### Wireless
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| aircrack-ng       | Official Arch   | |
| reaver            | BlackArch       | |
| bully             | BlackArch       | |
| hcxtools / hcxdumptool | BlackArch | Modern WPA |
| wifi-honey        | BlackArch       | |

### Forensics & Reverse (Light)
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| binwalk           | Official Arch   | |
| foremost          | Official        | |
| volatility3       | BlackArch       | Memory forensics |
| radare2 / r2      | Official Arch   | |
| ghidra            | BlackArch / AUR | Heavy but valuable |
| steghide          | Official        | |

### Supporting Utilities
| Tool              | Source          | Notes |
|-------------------|-----------------|-------|
| git, python, go, rust | Official   | |
| openvpn, wireguard-tools | Official | |
| gpg, age, sops    | Official        | Secrets |
| tmux, fzf, jq, yq | Official        | Quality of life |
| bloodhound        | BlackArch       | AD enumeration (important) |
| neo4j             | Official / BlackArch | BloodHound backend |

---

## Implementation Notes

- Prefer `depends=` on packages that exist in Official Arch or BlackArch.
- For tools only in AUR, document them and optionally provide a helper script.
- The meta-package itself will be a simple package that depends on the curated list.
- We will also ship `.desktop` files or menu structure so tools appear under **Pitchstone Security** categories.

---

## Size & Philosophy

This list is intentionally not "everything".  
It is the set of tools a competent security practitioner actually reaches for regularly.

Users who want the kitchen sink can install `pitchstone-security-full` or individual BlackArch groups.
