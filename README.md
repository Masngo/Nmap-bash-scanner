# Automated Network Reconnaissance using Nmap and Bash

## Project Overview
This project automates network scanning tasks using **Nmap** and **Bash scripting** on Linux (e.g., Kali Linux).
It is designed for beginners learning cybersecurity and basic scripting for reconnaissance.

## Objectives
- Understand basic Nmap usage
- Automate scans with Bash
- Perform Ping, Port, and OS detection scans
- Save output to timestamped files
- Deploy project to GitHub

## Tools & Technologies
- **Nmap**: Network scanning
- **Bash**: Automation
- **GitHub**: Hosting

## Folder Structure
```
nmap-bash-scanner/
├── README.md
├── scan.sh
├── results/
│   └── [targetname]_timestamp_scan.txt
├── screenshots/
│   └── example.png
└── LICENSE
```

## How It Works
1. User runs `scan.sh`
2. Inputs target IP/domain
3. Bash script runs:
   - Ping scan
   - Port scan
   - OS & service detection
4. Output is saved in `results/`

## Usage
```bash
chmod +x scan.sh
./scan.sh
```

## Screenshots
Include terminal output, result file, and folder view under `screenshots/`.

##  License
MIT License

Author
Masango Dewheretsoko
Software Engineering, Cyber Security & Bashing Enthusiast
https://github.com/Masngo/Nmap-bash-scanner
