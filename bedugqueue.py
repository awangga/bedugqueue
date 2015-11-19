#!/usr/bin/env python
"""
main program
"""
import psutil
import time

#config
bts=","
filename="result.csv"
#end config
#start profiling
print "Core CPU : ",psutil.cpu_count()
print "Disk Usage : ",psutil.disk_usage('/').percent, " %"
#end profiling

#open file and insert field name
logfile = open(filename,"w")
logfile.write(
"time"+bts+
"cpu_percent"+bts+
"cpu_times user"+bts+"cpu_times nice"+bts+"cpu_times system"+bts+"cpu_times idle"+bts+"cpu_times iowait "+bts+"cpu_times irq"+bts+"cpu_times softirq"+bts+"cpu_times steal"+bts+"cpu_times guest"+bts+"cpu_times guest_nice"+bts+
"cpu_times user (%)"+bts+"cpu_times nice (%)"+bts+"cpu_times system (%)"+bts+"cpu_times idle (%)"+bts+"cpu_times iowait (%)"+bts+"cpu_times irq (%)"+bts+"cpu_times softirq (%)"+bts+"cpu_times steal (%)"+bts+"cpu_times guest (%)"+bts+"cpu_times guest_nice (%)"+bts+
"virtual_memory total"+bts+"virtual_memory available"+bts+"virtual_memory (%)"+bts+"virtual_memory used"+bts+"virtual_memory free"+bts+"virtual_memory active"+bts+"virtual_memory inactive"+bts+"virtual_memory buffers"+bts+"virtual_memory cached"+bts+
"swap_memory total"+bts+"swap_memory used"+bts+"swap_memory free"+bts+"swap_memory (%)"+bts+"swap_memory sin"+bts+"swap_memory sout"+bts+
"bytes_sent"+bts+"bytes_recv"+bts+"packets_sent"+bts+"packets_recv"+bts+"errin"+bts+"errout"+bts+"dropin"+bts+"dropout"+bts+
"Tx"+bts+
"Rx"+bts+
"\n"
)
print "Running... press ctrl+c to stop"
#start iteration
while True:
	try:
		tx0,rx0,t0= psutil.net_io_counters().bytes_sent,psutil.net_io_counters().bytes_recv,time.time()
		#print t0
		print 'running \r',
		print t0,
		time.sleep(1)
		logfile.write(
		str(time.time())+bts+
		str(psutil.cpu_percent())+bts+
		bts.join(str(e) for e in psutil.cpu_times())+bts+
		bts.join(str(e) for e in psutil.cpu_times_percent())+bts+
		bts.join(str(e) for e in psutil.virtual_memory())+bts+
		bts.join(str(e) for e in psutil.swap_memory())+bts+
		bts.join(str(e) for e in psutil.net_io_counters())+bts+
		str((psutil.net_io_counters().bytes_sent-tx0)/(time.time()-t0))+bts+
		str((psutil.net_io_counters().bytes_recv-rx0)/(time.time()-t0))+bts+
		"\n"
		)
	except KeyboardInterrupt:
		break

#close file
print "Done"
logfile.close()