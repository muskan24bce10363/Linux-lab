#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Muskan Mathur

echo "======================================="
echo " Open Source Manifesto Generator"
echo "======================================="
echo "Answer three questions to generate your manifesto."
echo ""

# --- User Input ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Variables ---
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# --- Generate Manifesto ---
echo "---------------------------------------" > $OUTPUT
echo "   Open Source Manifesto" >> $OUTPUT
echo "---------------------------------------" >> $OUTPUT
echo "Author : $USER_NAME" >> $OUTPUT
echo "Date   : $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source and the idea of $FREEDOM." >> $OUTPUT
echo "Using tools like $TOOL, I experience collaboration, transparency, and innovation." >> $OUTPUT
echo "I aspire to build and freely share $BUILD so that others can learn, grow, and contribute." >> $OUTPUT
echo "Open source is not just about code, but about community and shared progress." >> $OUTPUT

echo "" >> $OUTPUT
echo "---------------------------------------" >> $OUTPUT

# --- Display Output ---
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT

