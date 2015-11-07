#!/bin/sh

top -b > top.log
#top -b -n1 > top.log

#The -b is for batch mode, which should prevent the strange characters. The -n1 tells it to only print one iteration
