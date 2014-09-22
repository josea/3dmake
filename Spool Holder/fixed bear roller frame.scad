/** JoseA. 2014-09-21

"Bear" to be used in a Spool to change the diameter of the axis whole so it fits the axis of a paint roller frame used to hold the spool of plastic.

Use at your own risk.

*/

//37.2 ?
//16.4? 

//31/2
//18.4/2

h = 10; // height of bearing. 
spool_axis_diameter = 32.3/2;
roller_axis_diameter = 18.4/2;
h_border =2;

translate ( [0,0,h_border])
difference () {
cylinder ( h, spool_axis_diameter , spool_axis_diameter , $fn = 360);
cylinder ( h, roller_axis_diameter, roller_axis_diameter, $fn = 360);
};

cylinder ( h_border , spool_axis_diameter *1.25,spool_axis_diameter *1.25, $fn =360);