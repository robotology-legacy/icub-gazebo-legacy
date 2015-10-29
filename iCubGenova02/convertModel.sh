simmechanics_to_urdf iCubGenova02_SIM_MODEL.xml --output xml --yaml iCubGenova02_simmechanics_options.yaml --csv-joints iCubGenova02_joint_parameters.csv --outputfile iCubGenova02.urdf
gz sdf -p iCubGenova02.urdf > iCubGenova02.sdf
