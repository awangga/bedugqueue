#!/bin/sh
echo "1 req conncurrent 1"
ab -n1 -c1 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
echo "100 req conncurrent 10"
sleep 10
ab -n10 -c5 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
echo "100 req conncurrent 50"
sleep 10
ab -n100 -c50 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
echo "500 req conncurrent 200"
sleep 10
ab -n1000 -c500 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
echo "700 req conncurrent 300"
sleep 10
ab -n10000 -c5000 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
echo "1000 req conncurrent 500"
sleep 10
ab -n100000 -c50000 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
echo "10000 req conncurrent 5000"
sleep 10
ab -n1000000 -c500000 "http://192.168.1.3:8080/s.py?rcpt=089610707901&msg=haikenomordariab"
