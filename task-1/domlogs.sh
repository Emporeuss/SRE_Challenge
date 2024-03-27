#!/bin/bash

echo -e "\n============= TOP REQUESTS BY IP =============\n"

cat access.log | cut -d " " -f 3 | sort | uniq -c | sort -nr | head -5

echo -e "\n========= Number of requests with '500' status code ========= \n"

cat access.log | cut -d " " -f "4" | grep -c 500

echo -e "\n========= Number of requests with '200' status code ========= \n"

cat access.log | cut -d " " -f "4" | grep -c 200

echo -e "\n========= Number of requests with '500' status code ========= \n"

cat access.log | cut -d " " -f "4" | grep -c 500

echo -e "\n========= Number of request per minute ========= \n"

cat access.log | cut -d " " -f "2" | cut -d ":" -f "1-2" | sort | uniq -c

echo -e "\n========= Top requests per domain name ========= \n"

cat access.log | cut -d " " -f "5" | sort | uniq -c | sort -nr

echo -e "\n========= Status codes returned for request directed to /page.php ========= \n"

grep -i "page.php" access.log | cut -d " " -f "4"  | uniq -c               
