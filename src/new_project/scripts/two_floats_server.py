#!/usr/bin/env python
from new_project.srv import *

import rospy

def handle_add_two_ints(req):
    try:
        if(req.c == 1):
            print "Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b))
            return AddTwoIntsResponse(req.a + req.b,True)
    
        elif(req.c == 2):
            print "Returning [%s - %s = %s]"%(req.a, req.b, (req.a - req.b))
            return AddTwoIntsResponse(req.a - req.b,True)
    
        elif(req.c == 3):
            print "Returning [%s * %s = %s]"%(req.a, req.b, (req.a * req.b))
            return AddTwoIntsResponse(req.a * req.b,True)
    
        elif(req.c == 4):
            print "Returning [%s / %s = %s]"%(req.a, req.b, (req.a / req.b))
            return AddTwoIntsResponse(req.a / req.b,True)
        else:
            print "Returning Error"
            return AddTwoIntsResponse(0,False)
    except:
        return AddTwoIntsResponse(0,False)

    



def add_two_ints_server():
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', AddTwoInts, handle_add_two_ints)
    print "Server is ready."
    rospy.spin()

if __name__ == "__main__":
    add_two_ints_server()
