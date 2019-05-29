#! /usr/bin/env python

import rospy
import datetime
import actionlib
import time

import actionlib_tutorials.msg
import new_project.msg

class KeyboardServer(object):
    _feedback = new_project.msg.KeyboardFeedback()
    _result = new_project.msg.KeyboardResult()

    def __init__(self, name):
        self._action_name = name
        self._as = actionlib.SimpleActionServer(self._action_name, new_project.msg.KeyboardAction, execute_cb=self.execute_cb, auto_start = False)
        self._as.start()
        print "Server started"
      
    def execute_cb(self, goal):
        r = rospy.Rate(1)
        success = True
        self._feedback.length = 0
        startTime = time.time()
        self._result.messages = 0
        print("Listening to Keyboard... Enter value of A in a new line to stop")
    
        while(True):
            value = raw_input()
            if(str(value) == str(goal.A)):
                success = True
                break

            if self._as.is_preempt_requested():
                rospy.loginfo('%s: Preempted' % self._action_name)
                self._as.set_preempted()
                success = False
                break
            self._feedback.length = len(value)
            self._as.publish_feedback(self._feedback)
            self._result.messages +=1
            r.sleep()
          
        if success:
            rospy.loginfo('%s: Succeeded' % self._action_name)
            endTime = time.time()
            self._result.time = endTime-startTime
            self._as.set_succeeded(self._result)
        
if __name__ == '__main__':
    rospy.init_node('task_3')
    server = KeyboardServer(rospy.get_name())
    rospy.spin()