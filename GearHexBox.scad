use <Hex.scad>
use <MetalGear.scad>


module GearHexBox ( ){
//translate ( [0,0,8])
//Hex(radius= 3.5,h = 8) ;

difference (){
	Hex(radius = 3.5, h  = 8);
Gear ( shaft= 0.95,  // center shaft radio
			h = 5, // lenght of shaft
	gr = 2.9 , //gear radio
nt = 8, //number of tooth. 
td = 1.1, //teeth depth.
hollow_shaft = 0, // indicates if the shaft is solid or if it a holow
ringr = 1.2 // the radius of the ring that holds the tooth together
) ;
}
}

translate ( [0,0,8])
rotate ( [180,0,0])
GearHexBox();