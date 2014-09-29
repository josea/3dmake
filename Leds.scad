/** JoseA. 2014-09-28
	 PrintrBot Simple, simple base for LEDs

TODO: una tercera pata para un tercer led es ideal
 
con two leds it is using a 120mohm resistence.

It is drawing about 40mA.
*/

cube ( [ 5, 43, 1.5] , center=true );

translate ( [-5,16.5,0])
difference (){
cube ( [5, 10, 1.5 ], center = true);
translate ([.5,0,0])
cube ( [4, 4, 1.5 ], center = true);
};


translate ( [-4, 3,-14.25])
rotate ( [0,0,270])
{
difference (){
cube ( [ 9, 9, 30], center = true);

translate ( [0,-2,-10])
rotate ([25,-10,])
// probé con radio 5 y no entra. Podría ser 6.5
cylinder ( h = 25, d= 7, $fn = 32, center = true);
translate ( [0,-1,5])
cube ( [ 6, 4, 20], center = true);

translate ( [0,3,9])
cube ( [9,3,10], center = true);

translate ( [0,4.5,2])
rotate ( [25,0,0] )
cube ( [9,3,8], center = true);
}


}



translate ( [0, -26,-14.25])
{
difference (){
cube ( [ 9, 9, 30], center = true);

translate ( [0,-2,-10])
rotate ([25,-10,0])
cylinder ( h = 25, d= 7, $fn = 32, center = true);

translate ( [0,0,5])
cube ( [ 6, 6, 20], center = true);
}

}