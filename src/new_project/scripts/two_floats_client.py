#!/usr/bin/env python
import sys
import rospy
from new_project.srv import *

def add_two_ints_client(x, y, z):
    rospy.wait_for_service('add_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
        resp1 = add_two_ints(x, y, z)
        return resp1
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def usage():
    return "%s [x y]"%sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 4:
        x = float(sys.argv[1])
        y = float(sys.argv[2])
        z= int(sys.argv[3])
    else:
        print usage()
        sys.exit(1)
    print "Requesting %s,%s,%s"%(x, y, z)
    print "output = %s"%(add_two_ints_client(x, y, z))
