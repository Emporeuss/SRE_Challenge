#/usr/bin/bash

# Defining the variable threshold that we will measure download speed against 
threshold=0.1

# variable that will preserve the value of the 
download_time=$(curl -s -w "%{time_total}\n" -o /dev/null https://google.com)


## if-fi statemen tthat will compare two values
if (( $(bc <<< "$download_time > $threshold") )); then

# curl command that will send POST request to my Slack webhook in case threshold is exceeded
curl --location -X POST 'https://hooks.slack.com/services/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' --header 'Content-Type: application/json' --data-raw '{"text": "Achtung! Website load time exceeds threshold!" }'
fi
