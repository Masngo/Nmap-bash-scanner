

#!/bin/bash

# Colors
GREEN='\033[0;32m'
NC='\033[0m'

echo -e "${GREEN}Welcome to Simple Nmap Bash Scanner${NC}"

# Check if nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "Error: Nmap is not installed."
    exit 1
fi

read -p "Enter the target IP or domain: " target
if [[ -z "$target" ]]; then
    echo "Error: No target entered."
    exit 1
fi

mkdir -p results
timestamp=$(date +%Y%m%d_%H%M%S)
filename="results/${target}_${timestamp}_scan.txt"
xml_output="results/${target}_${timestamp}.xml"
html_output="results/${target}_${timestamp}.html"

echo -e "Scanning ${GREEN}$target${NC}..."
echo "Results will be saved in $filename"

# Perform scans
{
echo "Ping Scan:"
nmap -sn "$target"

echo -e "\nPort Scan:"
nmap -p- "$target"

echo -e "\nOS & Version Detection:"
nmap -A "$target"
} | tee "$filename"

# HTML Report
echo -e "\nGenerating XML and HTML reports..."
nmap -A -oX "$xml_output" "$target"
if command -v xsltproc &> /dev/null; then
    xsltproc "$xml_output" -o "$html_output"
    echo "HTML report saved to: $html_output"
else
    echo "Install xsltproc to generate HTML reports."
fi

echo -e "${GREEN}Scan completed!${NC}"
