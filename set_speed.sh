string=$(xinput list | grep Apple)
id=${string:50:2}
move_speed=$(xinput list-props $id | grep "Move Speed")
move_speed_id=${move_speed:23:3}
accel_profile_id=$(xinput list-props $id | grep "Device Accel Profile" | cut -d "(" -f2 | cut -d ")" -f1)
accel_deceleration=$(xinput list-props $id | grep "Constant Deceleration" | cut -d "(" -f2 | cut -d ")" -f1)
velocity_scaling=$(xinput list-props $id | grep "Velocity Scaling" | cut -d "(" -f2 | cut -d ")" -f1)
echo $accel_profile_id
xinput set-prop $id $move_speed_id 1.239900 1.867536 0.010667 0.000000
xinput set-prop $id $accel_profile_id 2
xinput set-prop $id $accel_deceleration 5
xinput set-prop $id $velocity_scaling 25