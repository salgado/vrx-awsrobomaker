# vrx-awsrobomaker

## Introduction

These steps will guide you through creating a VRX ROS environment in the Cloud using AWS RoboMaker.

## Step 1: Create a AWS Account

In order to use AWS RoboMaker, do you need an account, see the link below to create: [How do I create and activate a new AWS account?](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/) 

## Tutorial

This tutorial has three parts explained in detail

*   Part 1 - Create a ROS development environment
*   Part 2 - Configure VRX
*   Part 3 - Test and run the VRX basic application

## Part 1 - Create a ROS development environment

To create your VRX robot application, you need an environment configured for ROS development, build tools like Colcon and some helper tools like Gazebo simulator, rviz, etc.

### 1.1 - Create a development environment

To get started with this tutorial, we’re going to create an AWS RoboMaker integrated development environment (IDE). From the **AWS RoboMaker** menu, select **Development Environments** then **Create development.** 

![](screens/aws-robomaker-tut-01.png)

Currently, AWS RoboMaker offers native support for Melodic(ROS1) or Foxy(ROS2) distro. But for our VRX environment, we will follow docker vrx installation process to accomplish the ROS Noetic competition config requirements.

Name your environment **vrx-env**, choose **Foxy (Latest)** as your ROS distribution and **m4.xlarge** as the instance type...


![](screens/aws-robomaker-tut-02.png)


... then click Create.


![](screens/aws-robomaker-tut-03.png)


After a few seconds, you should see the development environment appear.


![](screens/aws-robomaker-tut-04.png)


## Part 2 - configure VRX

To create the vrx-ROS-ready environment, you could use the link, https://github.com/osrf/vrx/wiki/system_setup_tutorials. But we customize the main commands in some scripts to a fast installation process. Follow the instructions below.

### 2.1 - Download the scripts

In the lower window pane of the development environment, use a bash terminal to download this repository. 

```bash
git clone https://github.com/salgado/vrx-awsrobomaker.git
cd vrx-awsrobomaker/scripts
```

### 2.1 - Install dependencies and run docker

Inside vrx-awsrobomaker directory run:

```bash
bash vrx-create-env.sh
```
