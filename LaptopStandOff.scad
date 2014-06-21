use <MCAD/boxes.scad>
use <MCAD/bearing.scad>
use <MCAD/gears.scad>
//roundedBox([50,50,50], 2, false ) ;
use <MCAD/regular_shapes.scad>
use <MCAD/trochoids.scad>
use <MCAD/unregular_shapes.scad>

//test_bearing();
//test_bearing_hole();


//test_gears();
//demo_3d_gears();

//cylinder_tube ( 50, 20, 2 ) ;

//pentagon_prism( 10, 5);

module roundedCubeIrregular(){
intersection ()
{
minkowski()
{
connect_squares ([ [0,10,0],[0,0,0],  [0,0,15], [0,10,15],
			  [20,10,0], [20,0,0], [20,0,10], [20,10,10]]);

translate ( [0,10,15/2])
rotate([90,0,0])
cylinder ( r=15/2, h =10);
}

translate ( [23,20,15])
rotate([90,0,0])
cylinder ( r=30, h =20);
}
/*hull(){
translate ( [0,10,15/2])
rotate([90,0,0])
cylinder ( r=15/2, h =10);
translate ( [10,10,15/2])
rotate([90,0,0])
cylinder ( r=10/2, h =10);
}*/
}


module roundedCubeIrregular2(){
minkowski()
{
intersection()
{
intersection ()
{
// irregular square
connect_squares ([ [0,10,0],[0,0,0],  [0,0,15], [0,10,15],
			  [20,10,0], [20,0,0], [20,0,10], [20,10,10]]);

// intersects to cylinder to have a rounded wall
translate ( [20,10,5])
rotate([90,0,0])
cylinder ( r=20, h =5);
}
// intersects to cylinder to have a rounded wall
translate ( [5,10,5])
rotate([90,0,0])
cylinder ( r= 15, h =5 ); 
}
// minkowski cylinder to have a rounded edges
translate ( [0,10,15/2])
rotate([90,0,0])
cylinder ( r=15/2, h =10);

}
/*hull(){
translate ( [0,10,15/2])
rotate([90,0,0])
cylinder ( r=15/2, h =10);
translate ( [10,10,15/2])
rotate([90,0,0])
cylinder ( r=10/2, h =10);
}*/
}

//rotate ([90,0,0]) roundedCubeIrregular2();
//polyhedron ( points = [[ 0,0,0], [0,10,0], [0,0,10], [0,10,10]],
//		 triangles = [[0,1,2], [1,2,3]] );



module stand(){
difference (){
resize ( [55, 30,  40] )
roundedCubeIrregular2();
translate ([1.5,-5,2.5])
resize ( [50, 40,  35] )
roundedCubeIrregular2();
}
}

$fn = 140;

rotate ([90,0,0])
stand();

/*
multmatrix ( m= [ [ 1, 0, 0, 1],
						[ 0, 1, 0, 1],
						[ -0.1, 0, 1, 1]]
			) 
rotate ( [90,0,0])
roundedBox ( [ 10,10,10], 2, true);*/