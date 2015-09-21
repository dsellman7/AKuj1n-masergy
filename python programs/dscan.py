#!/usr/bin/python
import socket
import time

print "-" * 30
print "Port Range Scanner (TCP)"
print "-" * 30

ip = raw_input("Provide an IP to scan: ")
port1 = input("Provide a starting port: ")
port2 = input("Provide an ending port: ")
port3 = port2 + 1
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
prange = range(port1, port3)

for x in prange:
	if s.connect_ex((ip, x)):
		time.sleep(0.1)
		print "Port", x, "is closed"
	else:
		time.sleep(0.1)
		print "Port", x, "is open"
		