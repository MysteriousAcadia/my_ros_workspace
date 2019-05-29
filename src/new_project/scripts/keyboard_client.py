#! /usr/bin/env python
from __future__ import print_function
import rospy


# Brings in the SimpleActionClient
import actionlib

# Brings in the messages used by the fibonacci action, including the
# goal message and the result message.
import actionlib_tutorials.msg
import new_project.msg


def feedback(msg):
    print("Feedback: "+str(msg.length))


def fibonacci_client():
    # Creates the SimpleActionClient, passing the type of the action
    # (FibonacciAction) to the constructor.
    goal_text = raw_input("Enter A: ")
    client = actionlib.SimpleActionClient('/task_3', new_project.msg.KeyboardAction)

    # Waits until the action server has started up and started
    # listening for goals.
    client.wait_for_server()

    # Creates a goal to send to the action server.
    
    goal = new_project.msg.KeyboardGoal()
    goal.A=goal_text

    # Sends the goal to the action server.
    client.send_goal(goal,feedback_cb=feedback)

    # Waits for the server to finish performing the action.
    client.wait_for_result()

    # Prints out the result of executing the action
    return client.get_result()  # A FibonacciResult

if __name__ == '__main__':
    try:
        # Initializes a rospy node so that the SimpleActionClient can
        # publish and subscribe over ROS.
        rospy.init_node('task_3_client')
        result = fibonacci_client()
        print("Result: Number of feedback messages sent: "+str(result.messages))
        print("Result: Time taken in seconds: "+str(result.time))
    except rospy.ROSInterruptException:
        print("program interrupted before completion", file=sys.stderr)