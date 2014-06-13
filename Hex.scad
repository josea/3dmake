/** Created by Jose Araujo. 2014-6-7.

    Just standard hex key (parametric) with no handle; 
*/


module Hex(
				radius // radius in mm
				, h // height of hex
		 ){
cylinder ( r= radius, h =h, $fn = 6 ) ;
}

//Hex(radius = 5,h  = 25);

//cylinder ( r = 6.7/2, h=5, $fn= 50);
//Hex(radius = 6.7*.95/2, h = 5);
Hex(radius = 6.7*.85/2, h = 5);

translate([0,1.9,-5/2])
difference (){
cube ( size =[8.5, 8.5,6], center = true);
translate ([0,0,-1])
cylinder(r=6.7/sqrt(3),h=5,center=true,$fn=6);
}