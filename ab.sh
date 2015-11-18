#!/bin/sh
echo "20 req conncurrent 10"
ab -n1 -c1 http://perlengkapan.jabar2016.com/test_login.php
echo "200 req conncurrent 100"
sleep 10
ab -n100 -c10 http://perlengkapan.jabar2016.com/test_login.php
echo "500 req conncurrent 250"
sleep 10
ab -n100 -c50 http://perlengkapan.jabar2016.com/test_login.php
echo "1000 req conncurrent 500"
sleep 10
ab -n500 -c200 http://perlengkapan.jabar2016.com/test_login.php
echo "2000 req conncurrent 1000"
sleep 10
ab -n700 -c300 http://perlengkapan.jabar2016.com/test_login.php
echo "10000 req conncurrent 5000"
sleep 10
ab -n1000 -c500 http://perlengkapan.jabar2016.com/test_login.php

ab -n10000 -c5000 http://perlengkapan.jabar2016.com/test_login.php
#This will shoot off 2000 requests at the server, with a concurrency level of 10 (10 threads performing requests in parallel).