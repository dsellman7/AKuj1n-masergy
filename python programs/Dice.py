#!/usr/bin/python

import random


udice = input("How many sides on the die? ")
pdice = udice + 1
modifier = input("What is the bonus/negative modifier? ")
uroll = random.randrange(1, pdice)
froll = uroll + modifier

print "-" * 15
print "The modifier is", modifier
print "your roll is", uroll
print "-" * 15
print "your modified roll is", froll
print "-" * 15