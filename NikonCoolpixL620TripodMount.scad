use <MCAD/screw.scad>
use <MCAD/nuts_and_bolts.scad>
use <polyScrewThread_r1.scad>
/*scale([1, 1, 0.1])
  surface(file = "NikonBase.png", center = true);*/

//hex_screw(5,4/3,55,5,0.5,2,10,2,2,0);
//hex_screw(5.5,4/3,50,5,0.5,2,10,2,2,0);
//hex_screw(5.25,4/3,50,5,0.15,2,10,2,2,0);

// screw to fix into camera.
hex_screw(5.25,4/3,50,5,0.25,2,10,3,3,0);


