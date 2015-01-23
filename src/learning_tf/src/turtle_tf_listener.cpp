#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <turtlesim/Spawn.h>
#include <ros/console.h>

int main(int argc, char** argv){
  ros::init(argc, argv, "my_tf_listener");

  ros::NodeHandle node;

  ros::service::waitForService("spawn");
  ros::ServiceClient add_turtle =
    node.serviceClient<turtlesim::Spawn>("spawn");
  turtlesim::Spawn srv;
  add_turtle.call(srv);

  ros::Publisher turtle_vel =
    node.advertise<geometry_msgs::Twist>("turtle2/cmd_vel", 10);

  tf::TransformListener listener;

  ros::Rate rate(10.0);
  while (node.ok()){
    tf::StampedTransform transform;
    try{
      // listener.lookupTransform("/turtle2", "/carrot1",
      //                          ros::Time(0), transform);
      ros::Time now = ros::Time::now();
      listener.waitForTransform("/turtle2", "/turtle1",
                                now, ros::Duration(3.0));
      listener.lookupTransform("/turtle2", "/turtle1",
                               now, transform);
    }
    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
      continue;
    }

    geometry_msgs::Twist vel_msg;
    vel_msg.angular.z = 4.0 * atan2(transform.getOrigin().y(),
                                    transform.getOrigin().x());
    ROS_INFO("angular.z: [%f]", vel_msg.angular.z);

    // vel_msg.linear.x = pow(sqrt(pow(transform.getOrigin().x(), 2) +
    //                               pow(transform.getOrigin().y(), 2)),2);
    vel_msg.linear.x = 0.5 * (sqrt(pow(transform.getOrigin().x(), 2) +
                                  pow(transform.getOrigin().y(), 2)));
    ROS_INFO("linear.z: [%f]", vel_msg.linear.x);
    
    turtle_vel.publish(vel_msg);

    rate.sleep();
  }
  return 0;
};