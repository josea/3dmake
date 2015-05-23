/** JoseA. 2014-09-28
	 PrintrBot Simple, simple base for LEDs.

	No warraties. Use at your own risk.
*/

// support
translate([0,-3,-0.25])
cube ( [ 5, 49, 2] , center=true );

// support 
translate([11.5,-28.75,-0.25])
difference(){
	cube ( [ 29, 3.5, 2] , center = true);
	translate ( [-11,0,0])
	cube ( [3,2,2], center = true);
}


// handle for wrapping with cables
translate ( [-5,16.5,0])
difference (){
	cube ( [5, 10, 1.5 ], center = true);
	translate ([.5,0,0])
	cube ( [4, 4, 1.5 ], center = true);
};


translate ( [-1.5, 3,-14.25])
rotate ( [0,0,270])
leg();

translate ( [0, -26,-14.25])
leg();

translate ( [29, -26,-14.25])
mirror([1,0,0])
leg(); 

module leg()
{
	difference (){
		cube ( [ 9, 9, 30], center = true);

		translate ( [0,-4,1])
		cube ([4,4,28],center= true);

		translate ( [0,-2,-10])
		rotate ([25,-10,])
		// probé con radio 5 y no entra. Podría ser 6.5
		// 7 sirvió pero se salía
		cylinder ( h = 25, d= 6.7, $fn = 32, center = true);
		/*translate ( [0,-1,5])
		cube ( [ 6, 4, 20], center = true);*/

		translate ( [0,3,8.5])
		cube ( [9,8,16], center = true);
		
		translate ( [0,4,-3])
		rotate ( [30,0,0] )
		cube ( [9,5,11], center = true);
	}
}


/*
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

}*/