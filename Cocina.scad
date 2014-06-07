module ventana(){
	union() {
		rotate([0,90,0])
		difference(){
			sphere(22.5,22.5,22.5, center=true); 
			cylinder(h = 50, r1=12, r2= 12, center=true);
		}
		translate ([0,0,-25])
		cylinder(h=13, r1= 27/2, r2 = 27/2, center=true);
		translate ([0,0,-27])
		cylinder(h=5, r1= 45/2, r2 = 27/2, center=true);
		translate ([0,0,21])
		cylinder ( h= 4, r = 10, center=true);
		translate( [0,0, -38])
		base();
	}
/*translate ( [-35/2,0,0])
	cube( [ 1,10, 10] , center=true);*/
}

module base(){
	difference(){
		cylinder(h=17, r1=56/2, r2=45/2, center=true);
		translate ( [0,0,-1])
		intersection(){
				cylinder(h=17, r1=35, r2=15, center=true);
				translate( [0,0,-4] )
				rotate([0,90,90])
				cylinder(h=20, r=5, center= true);
		}
	}
	translate( [0,-5,-6.5] )
	difference(){
		cube( [10,10,4], center=true);			
		cube( [4.5,10,4], center= true);
	}
}

module x(){
	rotate([0,0,45])
difference(){
	rotate([0,0,45])
	cube([10,10,1], center = true);

	rotate ([0,0,45])
	cube([9.5,9.5,1], center = true);
}
	rotate ([0,0,45])
	cube([13,0.1,.1], center= true);
	rotate ([0,0,45])
	cube([0.1,13,.1], center= true);
}




module x2(){
	rotate ( [0,0,270]) {
	translate ( [0,-35,0])
	cube([65,.5,1], center=true);

/*	translate ( [0,-15,0])
	cube([65,.5,1], center=true);

	translate ( [0,5,0])
	cube([65,.5,1], center=true);*/

	translate ([-35,0,0])
	cube ([.5,80,1], center=true);

/*	translate ([35,0,0])
	cube ([.5,80,1], center=true);*/
}
}


module xangle(){
	rotate ( [0,0,270]) {
	translate ( [0,-30,0])
	difference(){ 
	cube([70,10,3], center=true);
	cube([65,6, 3], center= true);
}


	translate ([-30,0,0])
	difference (){
	cube ([10,70,3], center=true);
	cube ([6,65,3], center=true);
}


/*	translate ([35,0,0])
	cube ([.5,80,1], center=true);*/
}
}


module zadjust(){

	difference(){
		cube ( [8,23,3.5],true);		
		cylinder( h=3.5, r = 1, $fn= 50, center = true);
	}
}

module example002()
{
	intersection() {
		difference() {
			union() {
				cube([30, 30, 30], center = true);
				translate([0, 0, -25])
					cube([15, 15, 50], center = true);
			}
			union() {
				cube([50, 10, 10], center = true);
				cube([10, 50, 10], center = true);
				cube([10, 10, 50], center = true);
			}
		}
/*		translate([0, 0, 5])
			cylinder(h = 50, r1 = 20, r2 = 5, center = true);*/
	}
}

//base();
//example002();

module circles(){
/*difference ( ){
cylinder ( h=2, r=30, center = true);
cylinder ( h=2, r=29, center = true); 
}

difference ( ){
cylinder ( h=2, r=21, center = true);
cylinder ( h=2, r=20, center = true); 
}
difference ( ){
cylinder ( h=2, r=11, center = true,$fn= 500);
cylinder ( h=2, r=10, center = true, $fn= 500); 
}

*/

difference ( ){
cylinder ( h=2, r=5, center = true, $fn= 8);
cylinder ( h=2, r=4, center = true, $fn= 8); 
}
}

/*difference ( ){
cube([20,20,1],center = true);
cube([18,18,1], center = true);
}*/
circles();
//ventana();
/*multmatrix( m =[[ 1, -0.00872686779, 0, 0], [0.0, 1,0,0], [0,0,1,0], [0,0,0,1]])*/
//scale(0.75,0.75,0.75)
//xangle();
//x2();
//zadjust();

