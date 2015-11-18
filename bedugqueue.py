#!/usr/bin/env python
"""
main program
"""
import psutil


process_names = [proc.name() for proc in psutil.process_iter()]
print process_names
