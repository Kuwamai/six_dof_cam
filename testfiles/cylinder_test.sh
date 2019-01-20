#!/bin/sh
rosservice call /gazebo/get_model_state "model_name: 'can'" | grep -A 9 pose >> cylinder_test.txt
rosservice call /gazebo/set_model_state "model_state:
  model_name: 'can'
  pose:
    position:
      x: 0.3
      y: -0.2
      z: 2.0"

