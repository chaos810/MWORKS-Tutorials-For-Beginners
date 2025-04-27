model InvertedPen1
  annotation(__MWORKS(version="2025a"),Diagram(coordinateSystem(extent={{-100,-100},{100,100}}, 
grid={2,2})));
  inner Modelica.Mechanics.MultiBody.World world 
    annotation (Placement(transformation(origin={-126.389,106.081}, 
extent={{-10,-10},{10,10}})));
  Modelica.Mechanics.MultiBody.Forces.WorldForce force 
    annotation (Placement(transformation(origin={-240.601,72.4679}, 
extent={{-20.6245,-20.6245},{20.6245,20.6245}})));
  Modelica.Blocks.Sources.Constant const(k=0) 
    annotation (Placement(transformation(origin={-328.616,100.138}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Constant const1(k=0) 
    annotation (Placement(transformation(origin={-328.505,64.8493}, 
extent={{-10,-10},{10,10}})));
  Modelica.Blocks.Sources.Constant const2(k=0) 
    annotation (Placement(transformation(origin={-329.691,27.8506}, 
extent={{-10,-10},{10,10}})));
  SubSystem1 subSystem1(bodyShape(shapeType="box"),body(r_CM={0.5,0,0},m=0.2),revolute(phi(start=1.0471975511966))) annotation(Placement(transformation(origin={-134.647,6.77395}, 
extent={{-49.5056,-28.496},{49.5056,28.496}})),__MWORKS(ShowPortName=true));
  block SubSystem1
              annotation(__MWorks(PortArrangement(Top(port1, port2), Right(position, velocity, angle)),independentInstance = true));
    Modelica.Mechanics.MultiBody.Sensors.AbsolutePosition absolutePosition 
      annotation (Placement(transformation(origin={-192.447,115.38}, 
    extent={{-10,-10},{10,10}})));
    Modelica.Mechanics.MultiBody.Parts.BodyShape bodyShape(m=2) 
      annotation (Placement(transformation(origin={-177.075,73.0435}, 
    extent={{-13.5415,-13.5415},{13.5415,13.5415}})));
    Modelica.Mechanics.MultiBody.Sensors.AbsoluteVelocity absoluteVelocity 
      annotation (Placement(transformation(origin={-150.171,99.967}, 
    extent={{-10,-10},{10,10}})));
    Modelica.Mechanics.Rotational.Components.Damper damper(d=0.1) 
      annotation (Placement(transformation(origin={-71.1399,48.2973}, 
    extent={{-14.2055,-14.2055},{14.2055,14.2055}}, 
    rotation=-720)));
    Modelica.Mechanics.MultiBody.Joints.Prismatic prismatic(useAxisFlange=false) 
      annotation (Placement(transformation(origin={-205.938,-1.50511}, 
    extent={{-24.166,-24.166},{24.166,24.166}})));
    Modelica.Mechanics.MultiBody.Joints.Revolute revolute(useAxisFlange=true,phi(start=0.261799387799149)) 
      annotation (Placement(transformation(origin={-70.3874,-1.77075}, 
    extent={{-16.6403,-16.6403},{16.6403,16.6403}}, 
    rotation=-720)));
    Modelica.Mechanics.MultiBody.Parts.Body body(m=0.1) 
      annotation (Placement(transformation(origin={6.6488,-3.10035}, 
    extent={{-10,-10},{10,10}})));
    Modelica.Mechanics.Rotational.Sensors.AngleSensor angleSensor 
      annotation (Placement(transformation(origin={-29.9458,-50.6439}, 
    extent={{-10,-10},{10,10}})));
    Modelica.Blocks.Interfaces.RealOutput position[3] 
        annotation (Placement(transformation(extent = { {-173.447, 113.38}, {-169.447, 117.38}})));
    Modelica.Blocks.Interfaces.RealOutput velocity[3] 
        annotation (Placement(transformation(extent = { {-131.171, 97.967}, {-127.171, 101.967}})));
    Modelica.Blocks.Interfaces.RealOutput angle 
        annotation (Placement(transformation(origin={-9.04308,-50.63}, 
extent={{-1.73597,-1.73597},{1.73597,1.73597}}), 
iconTransformation(origin={101.8,-66.6667}, 
extent={{-1.8,-1.8},{1.8,1.8}})));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a port1 
        annotation (Placement(transformation(extent = { {-186.283, 87.3768}, {-194.95, 78.7102}})));
    Modelica.Mechanics.MultiBody.Interfaces.Frame_a port2 
        annotation (Placement(transformation(extent = { {-222.371, 16.228}, {-237.837, 0.76177}})));
  equation
    connect(damper.flange_a, revolute.support) 
    annotation(Line(origin={-57.8696,-9.56917}, 
    points={{-27.4759,57.8665},{-37.1107,57.8665},{-37.1107,24.4387},{-22.502,24.4387}}, 
    color={0,0,0}));
    connect(revolute.axis, damper.flange_b) 
    annotation(Line(origin={-77.8696,-9.56917}, 
    points={{7.48221,24.4387},{27.8458,24.4387},{27.8458,57.8665},{20.9352,57.8665}}, 
    color={0,0,0}));
    connect(prismatic.frame_b, revolute.frame_a) 
    annotation(Line(origin={-135,-1}, 
    points={{-46.772,-0.505108},{47.9723,-0.505108},{47.9723,-0.770749}}, 
    color={95,95,95}, 
    thickness=0.5));
    connect(prismatic.frame_b, bodyShape.frame_b) 
    annotation(Line(origin={-160,36}, 
    points={{-21.772,-37.50511},{21.8814,-37.50511},{21.8814,37.0435},{-3.53331,37.0435}}, 
    color={95,95,95}, 
    thickness=0.5));
    connect(revolute.frame_b, body.frame_a) 
    annotation(Line(origin={-29,-2}, 
    points={{-24.7471,0.22925},{25.6488,0.22925},{25.6488,-1.10035}}, 
    color={95,95,95}, 
    thickness=0.5));
    connect(bodyShape.frame_a, absolutePosition.frame_a) 
    annotation(Line(origin={-191,94}, 
    points={{0.3835,-20.9565},{-11.4469,-20.9565},{-11.4469,21.3799}}, 
    color={95,95,95}, 
    thickness=0.5));
    connect(absoluteVelocity.frame_a, bodyShape.frame_a) 
    annotation(Line(origin={-166,89}, 
    points={{5.82933,10.967},{-24.6165,10.967},{-24.6165,-15.9565}}, 
    color={95,95,95}, 
    thickness=0.5));
    connect(revolute.axis, angleSensor.flange) 
    annotation(Line(origin={-67,-20}, 
    points={{-3.3874,34.8696},{-3.3874,-30.6439},{27.0542,-30.6439}}, 
    color={0,0,0}));
    connect(position, absolutePosition.r) 
      annotation (Line(origin = {0, 0}, 
                points = { {0, 0}, {0, 0} }, 
                color = { 0, 0, 0 }));
    connect(port1, bodyShape.frame_a) 
      annotation (Line(origin = {0, 0}, 
                points = { {0, 0}, {0, 0} }, 
                color = { 0, 0, 0 }));
    connect(velocity, absoluteVelocity.v) 
      annotation (Line(origin = {0, 0}, 
                points = { {0, 0}, {0, 0} }, 
                color = { 0, 0, 0 }));
    connect(port2, prismatic.frame_a) 
      annotation (Line(origin = {0, 0}, 
                points = { {0, 0}, {0, 0} }, 
                color = { 0, 0, 0 }));
    connect(angle, angleSensor.phi) 
      annotation (Line(origin={0,0}, 
points={{-9.04308,-50.63},{-18.9458,-50.6439}}, 
color={0,0,0}));
              end SubSystem1;
  equation
  connect(world.frame_b, subSystem1.port2) 
  annotation(Line(origin={-271,12}, 
points={{154.611,94.0809},{177.017,94.0809},{177.017,25.06995},{161.106,25.06995}}, 
color={95,95,95}, 
thickness=0.5));
  connect(force.frame_b, subSystem1.port1) 
  annotation(Line(origin={-205,73}, 
points={{-14.9765,-0.5321},{30.8471,-0.5321},{30.8471,-35.93}}, 
color={95,95,95}, 
thickness=0.5));
  connect(const.y, force.force[1]) 
  annotation(Line(origin={-292,82}, 
points={{-25.6162,18.1383},{26.6496,18.1383},{26.6496,-9.5321}}, 
color={0,0,127}));
  connect(const1.y, force.force[2]) 
  annotation(Line(origin={-291,69}, 
  points={{-26.5047,-4.15069},{25.6496,-4.15069},{25.6496,3.4679}}, 
  color={0,0,127}));
  connect(const2.y, force.force[3]) 
  annotation(Line(origin={-293,55}, 
points={{-25.6911,-27.1494},{27.6496,-27.1494},{27.6496,17.4679}}, 
color={0,0,127}));
  end InvertedPen1;