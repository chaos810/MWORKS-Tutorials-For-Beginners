model InvertedPenLinear
  annotation(__MWORKS(version="2025a"),Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2})));
  inner Modelica.Mechanics.MultiBody.World world 
    annotation (Placement(transformation(origin={-87.9194,16.481}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force 
    annotation (Placement(transformation(origin={-240.601,72.4679}, 
extent={{-20.6245,-20.6245},{20.6245,20.6245}})));
  Modelica.Blocks.Sources.Constant const1(k=0) 
    annotation (Placement(transformation(origin={-328.505,64.8493}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Constant const2(k=0) 
    annotation (Placement(transformation(origin={-329.691,27.8506}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsolutePosition absolutePosition 
    annotation (Placement(transformation(origin={60.6434,136.601}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(m=2) 
    annotation (Placement(transformation(origin={23.1191,93.2668}, 
extent={{-13.5415,-13.5415},{13.5415,13.5415}})));
  Modelica.Mechanics.Rotational.Components.Damper damper(d=0.1) 
    annotation (Placement(transformation(origin={129.054,68.5206}, 
extent={{-14.2055,-14.2055},{14.2055,14.2055}}, 
rotation=-720)));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange=false) 
    annotation (Placement(transformation(origin={-5.7439,18.7181}, 
extent={{-24.166,-24.166},{24.166,24.166}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange=true,phi(start=0.261799387799149)) 
    annotation (Placement(transformation(origin={129.807,18.4525}, 
extent={{-16.6403,-16.6403},{16.6403,16.6403}}, 
rotation=-720)));
  Modelica.Mechanics.MultiBody.Parts.Body body(m=0.1) 
    annotation (Placement(transformation(origin={206.843,17.1229}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor 
    annotation (Placement(transformation(origin={170.248,-30.4206}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput angle 
      annotation (Placement(transformation(origin={191.151,-30.4067}, 
extent={{-1.73597,-1.73597},{1.73597,1.73597}}), 
iconTransformation(origin={101.8,-66.6667}, 
extent={{-1.8,-1.8},{1.8,1.8}})));
  Modelica.Mechanics.MultiBody.Interfaces.Frame_a port2 
      annotation (Placement(transformation(origin={-29.9099,28.7181}, 
extent={{7.733,7.73312},{-7.733,-7.733115}})));
  Modelica.Blocks.Interfaces.RealInput u 
    annotation (Placement(transformation(origin={-307.27,130.017}, 
extent={{-20,-20},{20,20}})));
  Modelica.Blocks.Interfaces.RealOutput x 
    annotation (Placement(transformation(origin={94.4696,149.983}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Interfaces.RealOutput theta 
    annotation (Placement(transformation(origin={243.384,-14.1405}, 
extent={{-10,-10},{10,10}})));
  equation
  connect(world.frame_b, prismatic.frame_a) 
  annotation(Line(origin={-271,12}, 
points={{193.081,4.481},{241.0901,4.481},{241.0901,6.7181}}, 
color={95,95,95}, 
thickness=0.5));
  connect(force.frame_b, bodyShape.frame_a) 
  annotation(Line(origin={-205,73}, 
points={{-14.9765,-0.5321},{214.5776,-0.5321},{214.5776,20.2668}}, 
color={95,95,95}, 
thickness=0.5));
  connect(const1.y, force.force[2]) 
  annotation(Line(origin={-291,69}, 
  points={{-26.5047,-4.15069},{25.6496,-4.15069},{25.6496,3.4679}}, 
  color={0,0,127}));
  connect(const2.y, force.force[3]) 
  annotation(Line(origin={-293,55}, 
points={{-25.6911,-27.1494},{27.6496,-27.1494},{27.6496,17.4679}}, 
color={0,0,127}));
  connect(damper.flange_a, revolute.support) 
  annotation(Line(origin={142.3245,10.6541}, 
points={{-27.4758,57.86647},{-37.1107,57.86647},{-37.1107,24.4387},{-22.502,24.4387}}, 
color={0,0,0}));
  connect(revolute.axis, damper.flange_b) 
  annotation(Line(origin={122.325,10.6541}, 
points={{7.4822,24.4387},{27.8458,24.4387},{27.8458,57.86647},{20.9352,57.86647}}, 
color={0,0,0}));
  connect(prismatic.frame_b, revolute.frame_a) 
  annotation(Line(origin={65.1941,19.2233}, 
points={{-46.772,-0.50511},{47.9723,-0.50511},{47.9723,-0.77075}}, 
color={95,95,95}, 
thickness=0.5));
  connect(prismatic.frame_b, bodyShape.frame_b) 
  annotation(Line(origin={40.1941,56.2233}, 
points={{-21.772,-37.50511},{21.8814,-37.50511},{21.8814,37.0435},{-3.5335,37.0435}}, 
color={95,95,95}, 
thickness=0.5));
  connect(revolute.frame_b, body.frame_a) 
  annotation(Line(origin={171.194,18.2233}, 
points={{-24.7471,0.22925},{25.6488,0.22925},{25.6488,-1.10035}}, 
color={95,95,95}, 
thickness=0.5));
  connect(revolute.axis, angleSensor.flange) 
  annotation(Line(origin={133.194,0.223254}, 
points={{-3.3874,34.86955},{-3.3874,-30.6439},{27.0542,-30.6439}}, 
color={0,0,0}));
  connect(x, absolutePosition.r[1]) 
  annotation(Line(origin={200.194,20.2233}, 
points={{-105.724,129.7597},{-105.724,116.377},{-128.551,116.377}}, 
color={0,0,0}));
  connect(theta, angle) 
  annotation(Line(origin={200.194,20.2233}, 
points={{43.1899,-34.3638},{43.1899,-50.63},{-9.043,-50.63}}, 
color={0,0,0}));
  connect(port2, prismatic.frame_a) 
  annotation(Line(origin={200.194,20.2233}, 
points={{-230.104,8.49489},{-230.104,-1.50511}}, 
color={0,0,0}));
  connect(angle, angleSensor.phi) 
  annotation(Line(origin={200.194,20.2233}, 
points={{-9.04308,-50.63},{-18.9458,-50.6439}}, 
color={0,0,0}));
  connect(u, force.force[1]) 
  annotation(Line(origin={-268,91}, 
points={{-39.2697,39.0171},{2.6496,39.0171},{2.6496,-18.5321}}, 
color={0,0,127}));
  connect(bodyShape.frame_b, absolutePosition.frame_a) 
  annotation(Line(origin={17,114}, 
points={{19.6606,-20.7332},{19.6606,22.6008},{33.6434,22.6008}}, 
color={95,95,95}, 
thickness=0.5));
  end InvertedPenLinear;