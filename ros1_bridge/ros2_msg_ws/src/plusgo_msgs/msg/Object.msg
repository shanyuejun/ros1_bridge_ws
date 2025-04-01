float64 timestamp
uint8 source
float32 exist_confidence # lidar 0.5 camera 0.4  radar 0.2
int64 type
float32 type_confidence
int64 track_id 
float32 tracking_time # second
# motion_state default:UNKNOWN,dynamic:MOVING,static object:STATIC
# The moving target is at rest: STOPED
int64 motion_state
geometry_msgs/Point32 anchor # barycenter center of points /m
# the yaw angle, theta = 0.0 <=> direction = (1, 0, 0)
float32 theta  # rad
# the main direction is the bbox length orientation
geometry_msgs/Vector3 direction # normalized 3D vector
geometry_msgs/Vector3 direction_cov
geometry_msgs/Point32 center # center of 3D boundingbox /m
geometry_msgs/Point32 center_cov
# size of the oriented boundingbox, length is the size in the main direction
geometry_msgs/Vector3 size # (length->x,width->y,height->z)/m
geometry_msgs/Vector3 size_cov
bool is_relative_velocity # default:false
geometry_msgs/Vector3 velocity_relative #velocity(x,y,z)m/s vz = 0
geometry_msgs/Vector3 velocity #velocity(x,y,z)m/s vz = 0
geometry_msgs/Vector3 velocity_cov
geometry_msgs/Vector3 acceleration # acceleration m/s^2
geometry_msgs/Vector3 acceleration_cov

float32 angle_velocity # rad/s
float32 angle_velocity_cov
float32 angle_acceleration # rad/s^2
float32 angle_acceleration_cov

geometry_msgs/Point32[] trajectory # tracking trajectory
geometry_msgs/Point32[] history_type # tracking history type
geometry_msgs/Vector3[] history_velocity # tracking history velocity
# convex hull of the object
Polygon polygon

