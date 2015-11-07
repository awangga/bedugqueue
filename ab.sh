#!/bin/sh
echo "20 req conncurrent 10"
ab -n20 -c10 http://10.200.0.10:8080/
echo "200 req conncurrent 100"
sleep 10
ab -n200 -c100 http://10.200.0.10:8080/
echo "500 req conncurrent 250"
sleep 10
ab -n500 -c250 http://10.200.0.10:8080/
echo "1000 req conncurrent 500"
sleep 10
ab -n1000 -c500 http://10.200.0.10:8080/
echo "2000 req conncurrent 1000"
sleep 10
ab -n2000 -c1000 http://10.200.0.10:8080/
echo "10000 req conncurrent 5000"
sleep 10
ab -n10000 -c5000 http://10.200.0.10:8080/
#This will shoot off 2000 requests at the server, with a concurrency level of 10 (10 threads performing requests in parallel).