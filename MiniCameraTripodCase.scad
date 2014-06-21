// JoseA. 2014-06-21
// This is a simple case for storing an small 
// portable camera tripod.

use <Hex.scad>

// tripod shape
module tripod(){

rotate( [0,90,0])
cylinder( r=15/*6*/, h = 67 ) ;

translate ( [67,0,0])
rotate( [0,90,0])
cylinder ( r= 25/2, h = 23 );

translate ( [86, 0,-25/2 - 8.5])
difference (){
cylinder( r= 23/2, h = 12.5);

translate ([0,-23/2,0])
cube ( [23, 23,12.5]);
}


translate ( [67+23,0,0])
rotate( [0,90,0])
cylinder ( r= 18/2, h =12);

translate ( [67+23+12,0,0])
rotate( [0,90,0])
cylinder ( r = 5, h= 6 );

translate ( [67+23+12+6,0,0])
rotate( [0,90,0])
cylinder ( r = 23.5/2, h= 8 );


translate ( [67+23+12+6+8,0,0])
rotate( [0,90,0])
cylinder ( r = 9/2, h= 7 );

}

module full_enclosure(){
translate ([-(67+23+12+6+8+7+2)+75/2,0,2])
difference()
{
translate ( [(67+23+12+6+8+7)- 75/2 +2,0,-2])
cube ( [75,15*2+18,  15*2+8.5+4], center =  true) ;
{
// top-middle box, so the piece can be inserted.
//translate ( [(67+23+12+6+8+7)/2,0,18/2])
//cube ( [67+23+12+6+8+7,15*2,  18], center =  true) ;
tripod();
}
}
}

//full_enclosure();

$fn = 60;

translate ( [32,19,0])Hex(4,6 );
translate ( [32,-19,0])Hex(4,6 );
translate ( [-32,19,0])Hex(4,6);
translate ( [-32,-19,0])Hex(4,6 );
intersection(){
translate ([0,0, -(15*2+8.5+4)/4 ])
cube ( [75, 15*2+18, (15*2+8.5+4)/2],center = true);
full_enclosure();
}

/*
translate ( [0, 65,0])
//rotate ( [180,0,0])
{
difference (){
intersection(){
translate ([0,0, -(15*2+8.5+4)/4 ])
cube ( [75, 15*2+18, (15*2+8.5+4)/2],center = true);
rotate ([180,0,0])
full_enclosure();
}
translate ( [32,19,-6+.25])Hex(4+.25,6+.25 );
translate ( [32,-19,-6+.25])Hex(4+.25,6+.25 );
translate ( [-32,19,-6+.25])Hex(4+.25,6+.25);
translate ( [-32,-19,-6+.25])Hex(4+.25,6+.25 );
}
}
*/

