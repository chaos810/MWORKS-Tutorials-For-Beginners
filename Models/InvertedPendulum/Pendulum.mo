model Pendulum
  annotation(__MWORKS(version="2025a"));
  inner Modelica.Mechanics.MultiBody.World world 
    annotation (Placement(transformation(origin = {-218.643, 7.30435}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Mechanics.MultiBody.Parts.Fixed fixed 
    annotation (Placement(transformation(origin={-68.1739,79.3739}, 
extent={{-12.4348,12.4348},{12.4348,-12.4348}}, 
rotation=-90)));
  Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange=true,phi(start=0.872664625997165)) 
    annotation (Placement(transformation(origin={-69.3913,2.19132}, 
extent={{13.6522,-13.6522},{-13.6522,13.6522}}, 
rotation=90)));
  Modelica.Mechanics.MultiBody.Parts.Body body(r_CM={0.5,0,0}) 
    annotation (Placement(transformation(origin={-68.6609,-56}, 
extent={{-12.9217,-12.9217},{12.9217,12.9217}}, 
rotation=-90)));
  Modelica.Mechanics.Rotational.Components.Damper damper(d=0.1) 
    annotation (Placement(transformation(origin={-143.652,-1.94783}, 
extent={{-12.4348,-12.4348},{12.4348,12.4348}}, 
rotation=-90)));
equation
  connect(fixed.frame_b, revolute.frame_a) 
  annotation(Line(origin={-69,41}, 
points={{0.8261,25.9391},{0.8261,-25.15648},{-0.3913,-25.15648}}, 
color={95,95,95}, 
thickness=0.5));
  connect(revolute.frame_b, body.frame_a) 
  annotation(Line(origin={-69,-27}, 
points={{-0.3913,15.53912},{-0.3913,-16.0783},{0.3391,-16.0783}}, 
color={95,95,95}, 
thickness=0.5));
  connect(damper.flange_a, revolute.support) 
  annotation(Line(origin={-113,10}, 
  points={{-30.652,0.48697},{29.9565,0.48697},{29.9565,0.38264}}, 
  color={0,0,0}));
  connect(damper.flange_b, revolute.axis) 
  annotation(Line(origin={-113,-6}, 
  points={{-30.652,-8.38263},{29.9565,-8.38263},{29.9565,8.19132}}, 
  color={0,0,0}));
  end Pendulum;