#!/usr/bin/env python3
import rospy
from std_msgs.msg import Float64
from ros_tutorial.msg import Weight

gravity = 9.8
density = 0.0
volume = 0.0
density_update = False
volume_update = False 

weight_pub = rospy.Publisher("/weight", Weight, queue_size=10)

def density_callback(data):
	global density 
	global density_update
	density = data.data
	density_update = True
	
def volume_callback(data):
	global volume
	global volume_update
	volume = data.data
	volume_update = True
	calculate_weight()
	
def calculate_weight():
	global density_update 
	global volume_update
	if density_update and volume_update:
		weight = volume * density * gravity
		msg = Weight()
		msg.weight = weight
		weight_pub.publish(msg)
		
		
		density_update = False # reset flags after calc
		volume_update = False

rospy.init_node("cylinder_weight")
#weight_pub = rospy.Publisher("/cylinder_weight", Float64, queue_size=10)
rospy.Subscriber("/volume", Float64, volume_callback)
rospy.Subscriber("/density", Float64, density_callback)

rospy.spin()

