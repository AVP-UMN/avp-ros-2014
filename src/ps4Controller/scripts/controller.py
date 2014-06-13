#!/usr/bin/env python
from control_lib import PS4_Control 
from ps4Controller.msg import control_data
import rospy
import time


def main():
	
	control = PS4_Control(45,60,30)
	ps4_pub = rospy.Publisher('ps4_control', control_data)

	control.init()
	rospy.init_node('ps4Controller')
	msg = control_data()
	last = []
	block = False
	while True:
		result = control.detect()
		
		if result[0] == "error":  
			continue
		if len(last) != 0:
			if last[0] == result[0] and last[1] == result[1]:
				continue
		if result[0] == "l2" and result[1] != 0:
			block = True
		if result[0] == "l2" and result[1] == 0:
			block = False
		if block and result[0] == "r2":
			continue
		msg.type = result[0]
		msg.value = result[1]
		ps4_pub.publish(msg)
		last = result

if __name__ == '__main__':
	main()
