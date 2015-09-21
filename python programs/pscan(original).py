#!/usr/bin/python
import socket

ip = raw_input("Enter target IP: ")
port = input("Enter Target port: ")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

if s.connect_ex((ip, port)):
	print "Port", port, "is closed"
else:
	print "Port", port, "is open"