Model files of iCubHeidelberg01
===============================

This repository contains files describing the model of the humanoid robot iCubHeidelberg01, which is an [iCub](http://www.icub.org) ver. 2.5  without arms and head and with a special design of the chest.

These files allow to simulate the robot in [Gazebo](http://www.gazebosim.org).

The following files are contained in the folder iCubHeidelberg01_model:

   * iCubHeidelberg01_SIM_MODEL.xml, it is a file generated from SimMechanics Link, which is a tool by Mathworks that allow to convert CAD assembly files to XML model description files

   * Collada meshes (.dae) in the dae_meshes folder

   * iCubHeidelberg01.urdf, which is obtained by converting the iCubHeidelberg01_SIM_MODEL.xml file using the [simmechanics_to_urdf](https://github.com/robotology-playground/simmechanics-to-urdf) tool 

   * iCubHeidelberg01.sdf is obtained using gz sdf tool (``gz sdf -p iCubHeidelberg01.urdf > iCubHeidelberg01.sdf``)

To clone this repository:
```
   hg clone https://bitbucket.org/yue_hu/icubheidelberg01
```

Simulation in Gazebo
====================
To run the simulation of the robot in Gazebo, it is necessary to install the [gazebo-yarp-plugins](https://github.com/robotology/gazebo-yarp-plugins), with all the dependencies listed in the GitHub page.

There are two models in this repository:

   * iCubHeidelberg01, under iCubHeidelberg01_model folder, which is the robot with free floating base

   * iCubHeidelberg01_fixed, under iCubHeidelberg01_fixed, which is the robot fixed on a virtual pole

To import the robot in Gazebo:

   * in the .bashrc add the line
```
    export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:/home/user/path/to/iCubHeidelberg01
```

To run the simulator:

   * run yarpserver (refer to [http://www.yarp.it] for more details)

   * run Gazebo

   * drag and drop iCubHeidelberg01 (fixed or not)

You can move the robot joints with the robotMotorGui configured for iCubHeidelberg01. To do so, in a terminal go to the folder /home/user/path/to/iCubHeidelberg01/iCubHeidelberg01_model/conf and run ``robotMotorGui`` (**NOTE**: robotMotorGui is at the moment in the icub-main package, which means that to use it it is necessary to install [icub-main](https://github.com/robotology/icub-main)).

You can run the model in Gazebo also using different physics engine (use carefully), the default is ODE, other options are:

   * SimBody, ``gazebo -e simbody``

   * Bullet, ``gazebo -e bullet``

To change the PID gains you can modify the files .ini under conf folder.
