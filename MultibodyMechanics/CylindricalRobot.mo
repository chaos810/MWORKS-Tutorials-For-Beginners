model learn
  annotation(__MWORKS(version="2025a"),Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2})));
  inner Modelica.Mechanics.MultiBody.World world 
    annotation (Placement(transformation(origin={-242.103,40.7738}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox(r_shape={0,0,0},width=3,length=3,height=0.1,r={1.5,0,0}) 
    annotation (Placement(transformation(origin={-196.118,41.4728}, 
extent={{-15.3891,-15.3891},{15.3891,15.3891}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder(r={0,0,1.35},length=3,diameter=0.3) 
    annotation (Placement(transformation(origin={-131.682,38.8953}, 
extent={{-13.749,-13.749},{13.749,13.749}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(n={0,0,1},useAxisFlange=true) 
    annotation (Placement(transformation(origin={-73.8072,39.1296}, 
extent={{-13.046,-13.046},{13.046,13.046}})));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(n={0, 0, 1},useAxisFlange=true) 
    annotation (Placement(transformation(origin={-16.5507,39.3853}, 
extent={{-12.5774,-12.5774},{12.5774,12.5774}})));
  Modelica.Mechanics.MultiBody.Parts.BodyCylinder bodyCylinder1(r={0,0,0.15},length=0.3,diameter=0.6,innerDiameter=0.3) 
    annotation (Placement(transformation(origin={34.6992,40.5355}, 
extent={{-13.5146,-13.5146},{13.5146,13.5146}})));
  Modelica.Mechanics.Translational.Sources.Position position 
    annotation (Placement(transformation(origin={-78.728,93.7238}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Sine sine(amplitude=1.25,f=0.1) 
    annotation (Placement(transformation(origin={-141.992,93.7238}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Sine sine1(amplitude=3.14,f=0.1) 
    annotation (Placement(transformation(origin={-71.071,127.624}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.Rotational.Sources.Position position1 
    annotation (Placement(transformation(origin={-18.6092,90.6967}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox1(r={1.75, -0.75, 0},lengthDirection={1, 0, 0},length=2,width=0.3) 
    annotation (Placement(transformation(origin={81.8884,37.8124}, 
extent={{-14.0206,-14.0206},{14.0206,14.0206}})));
  Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic1(n={0, 1, 0},useAxisFlange=true) 
    annotation (Placement(transformation(origin={136.134,38.1924}, 
extent={{-12.5774,-12.5774},{12.5774,12.5774}})));
  Modelica.Mechanics.MultiBody.Parts.BodyBox bodyBox2(r_shape={0,0,0},length=1.5,width=0.25,r={0, 1, 0}) 
    annotation (Placement(transformation(origin={194.77,38.3941}, 
extent={{-13.2328,-13.2328},{13.2328,13.2328}})));
  Modelica.Mechanics.Translational.Sources.Position position2 
    annotation (Placement(transformation(origin={132.357,86.6735}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Sine sine2(amplitude=0.75,f=0.1) 
    annotation (Placement(transformation(origin={83.8356,110.865}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Sensors.AbsoluteSensor absoluteSensor(get_r=true,get_v=true,get_a=true) 
    annotation (Placement(transformation(origin={227.913,3.89401}, 
extent={{-13.894,-13.894},{13.894,13.894}})));
  Modelica.Mechanics.MultiBody.Sensors.RelativeSensor relativeSensor(get_r_rel=true,get_v_rel=true,get_a_rel=true) 
    annotation (Placement(transformation(origin={177.498,-34.0478}, 
extent={{-16.7829,-16.7829},{16.7829,16.7829}})));
  equation
  connect(world.frame_b, bodyBox.frame_a) 
  annotation(Line(origin={-203,38}, 
points={{-29.103,2.7738},{-8.50664,2.7738},{-8.50664,3.47282}}, 
color={95,95,95}, 
thickness=0.5));
  connect(bodyBox.frame_b, bodyCylinder.frame_a) 
  annotation(Line(origin={-163.49,40.4686}, 
points={{-17.2389,1.0042},{18.0582,1.0042},{18.0582,-1.5733}}, 
color={95,95,95}, 
thickness=0.5));
  connect(bodyCylinder.frame_b, prismatic.frame_a) 
  annotation(Line(origin={-103.49,37.4686}, 
points={{-14.4438,1.4267},{16.6363,1.4267},{16.6363,1.661}}, 
color={95,95,95}, 
thickness=0.5));
  connect(prismatic.frame_b, revolute.frame_a) 
  annotation(Line(origin={-42.4895,38.4686}, 
points={{-18.2717,0.661},{13.3614,0.661},{13.3614,0.9167}}, 
color={95,95,95}, 
thickness=0.5));
  connect(revolute.frame_b, bodyCylinder1.frame_a) 
  annotation(Line(origin={8.51046,38.4686}, 
points={{-12.4838,0.9167},{12.6741,0.9167},{12.6741,2.0669}}, 
color={95,95,95}, 
thickness=0.5));
  connect(sine.y, position.s_ref) 
  annotation(Line(origin={-110.49,93.4686}, 
points={{-20.502,0.2552},{19.7615,0.2552}}, 
color={0,0,127}));
  connect(position.flange, prismatic.axis) 
  annotation(Line(origin={-66.4895,70.4686}, 
points={{-2.2385,23.2552},{3.1191,23.2552},{3.1191,-23.5114}}, 
color={0,127,0}));
  connect(sine1.y, position1.phi_ref) 
  annotation(Line(origin={-45.4895,109.469}, 
points={{-14.5815,18.155},{14.8803,18.155},{14.8803,-18.7719}}, 
color={0,0,127}));
  connect(position1.flange, revolute.axis) 
  annotation(Line(origin={-4.48954,71.4686}, 
points={{-4.1197,19.2281},{12.114,19.2281},{12.114,-19.5059},{-12.0612,-19.5059}}, 
color={0,0,0}));
  connect(bodyCylinder1.frame_b, bodyBox1.frame_a) 
  annotation(Line(origin={58.5105,41.4686}, 
points={{-10.2967,-0.9331},{9.35738,-0.9331},{9.35738,-3.6562}}, 
color={95,95,95}, 
thickness=0.5));
  connect(bodyBox1.frame_b, prismatic1.frame_a) 
  annotation(Line(origin={110,38}, 
  points={{-14.091,-0.1876},{13.5566,-0.1876},{13.5566,0.1924}}, 
  color={95,95,95}, 
  thickness=0.5));
  connect(prismatic1.frame_b, bodyBox2.frame_a) 
  annotation(Line(origin={183,36}, 
points={{-34.2886,2.1924},{-1.46287,2.1924},{-1.46287,2.39413}}, 
color={95,95,95}, 
thickness=0.5));
  connect(sine2.y, position2.s_ref) 
  annotation(Line(origin={108,99}, 
  points={{-13.1644,11.8645},{12.357,11.8645},{12.357,-12.3265}}, 
  color={0,0,127}));
  connect(position2.flange, prismatic1.axis) 
  annotation(Line(origin={144,66}, 
  points={{-1.64303,20.6735},{2.19592,20.6735},{2.19592,-20.2612}}, 
  color={0,127,0}));
  connect(bodyBox2.frame_b, absoluteSensor.frame_a) 
  annotation(Line(origin={197,71}, 
points={{11.0028,-32.6059},{11.0028,-67.106},{17.0193,-67.106}}, 
color={95,95,95}, 
thickness=0.5));
  connect(bodyBox2.frame_b, relativeSensor.frame_a) 
  annotation(Line(origin={184,2}, 
  points={{24.0028,36.3941},{-23.2846,36.3941},{-23.2846,-36.0478}}, 
  color={95,95,95}, 
  thickness=0.5));
  connect(relativeSensor.frame_b, bodyCylinder1.frame_a) 
  annotation(Line(origin={24,2}, 
points={{170.281,-36.0478},{-4.63284,-36.0478},{-4.63284,38.5355},{-2.8154,38.5355}}, 
color={95,95,95}, 
thickness=0.5));
  end learn;