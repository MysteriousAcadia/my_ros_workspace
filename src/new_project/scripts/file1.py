#!/usr/bin/env python
import roslib; roslib.load_manifest('beginner_tutorials')
import rospy
from std_msgs.msg import String
def talker():
    print("Listening for keyboard")
    pub = rospy.Publisher('input_keyboard', String, queue_size=1)
    rospy.init_node('talker')
    while not rospy.is_shutdown():
        text=raw_input()
        #str = "hello world "+str(text)
        rospy.loginfo(text)
        pub.publish(String(text))
        rospy.sleep(1.0)
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass	
