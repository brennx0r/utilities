#!/bin/sh

URLS=($(cat url_list.txt))

for URL in ${URLS[*]}; do
	echo "Trying $URL:  " >> http_response_results.txt
	curl $URL >> http_response_results.txt
	echo "\n" >> http_response_results.txt
done