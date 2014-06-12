use <Hex.scad>
use <MetalGear.scad>



Hex ( radius = 3.32, h = 8) ; 
translate ( [0,0,8])
cylinder (r=3.32,h =2 , $fn= 100); 
translate ( [0,0,10])
Gear (  shaft= 0.95,  // center shaft radio
			h = 2, // lenght of shaft
	gr = 11.5 , //gear radio
nt = 31, //number of tooth. 
td = 1, //teeth depth.
hollow_shaft = 0, // indicates if the shaft is solid or if it a holow
ringr = 10 // the radius of the ring that holds the tooth together
);
/*Gear (  shaft= 0.95,  // center shaft radio
			h = 5, // lenght of shaft
	gr = 2.5 , //gear radio
nt = 8, //number of tooth. 
td = 1, //teeth depth.
hollow_shaft = 0, // indicates if the shaft is solid or if it a holow
ringr = 1.2 // the radius of the ring that holds the tooth together
);*/