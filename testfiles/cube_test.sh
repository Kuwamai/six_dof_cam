#!/bin/sh
rosservice call /gazebo/get_model_state "model_name: 'cube'" | grep -A 9 pose >> cube_test.txt
rosservice call /gazebo/set_model_state "model_state:
  model_name: 'cube'
  pose:
    position:
      x: 0.3
      y: -0.2
      z: 2.0"

