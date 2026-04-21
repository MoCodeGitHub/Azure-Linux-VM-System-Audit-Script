#!/bin/bash

REPORT_FILE="system_audit_report.txt"

echo "===============================" > $REPORT_FILE
echo "   SYSTEM HEALTH AUDIT REPORT" >> $REPORT_FILE
echo "===============================" >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Hostname:" >> $REPORT_FILE
hostname >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Date & Time:" >> $REPORT_FILE
date >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "System Uptime:" >> $REPORT_FILE
uptime >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Logged-in Users:" >> $REPORT_FILE
who >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "CPU Load:" >> $REPORT_FILE
top -bn1 | grep "load average" >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Memory Usage:" >> $REPORT_FILE
free -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Disk Usage:" >> $REPORT_FILE
df -h >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "IP Address:" >> $REPORT_FILE
hostname -I >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "Top Running Services:" >> $REPORT_FILE
systemctl list-units --type=service --state=running | head -10 >> $REPORT_FILE

echo "" >> $REPORT_FILE
echo "===============================" >> $REPORT_FILE
echo "   END OF REPORT" >> $REPORT_FILE
echo "===============================" >> $REPORT_FILE

echo "Audit complete. Report saved to $REPORT_FILE"