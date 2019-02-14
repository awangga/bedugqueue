#!/bin/sh
echo "--------------------------"
echo "1 req conncurrent 1"
echo "--------------------------"
ab -n1 -c1 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "10 req conncurrent 5"
echo "--------------------------"
sleep 10
ab -n10 -c5 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "100 req conncurrent 10"
echo "--------------------------"
sleep 10
ab -n100 -c10 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "500 req conncurrent 20"
echo "--------------------------"
sleep 10
ab -n500 -c20 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "1000 req conncurrent 30"
echo "--------------------------"
sleep 10
ab -n1000 -c30 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "1000 req conncurrent 50"
echo "--------------------------"
sleep 10
ab -n1000 -c50 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "1000 req conncurrent 100"
echo "--------------------------"
sleep 10
ab -n1000 -c100 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "1000 req conncurrent 200"
echo "--------------------------"
sleep 10
ab -n1000 -c200 "http://spacemap.lapan.go.id/spacemap-aceh/"
echo "--------------------------"
echo "1000 req conncurrent 500"
echo "--------------------------"
sleep 10
ab -n1000 -c500 "http://spacemap.lapan.go.id/spacemap-aceh/"
