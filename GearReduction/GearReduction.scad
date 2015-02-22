//based on http://www.thingiverse.com/thing:7379/
// had to pass it through netfabb to fix it, otherwise it 
// wouldn't compile correctly.
//import ("gear_stage_fixed.stl"); 

module gear(){
// the resulting gear has about 12 of radio
difference (){
translate ([0,-2.7,0])
scale([0.3, 0.3, 0.5] )
import ("gear_stage_fixed.stl"); 

cylinder ( h= 10, r = 2, $fn =16 );
}
}


module motor_shaft(){
	scale ([1,1,1.5] )
	difference ( ){ 
		union (){
		difference () {
			gear() ;
			cube ( [40,40,5 ], center = true );
		} 
		translate ( [0,0,5] )
		cylinder( h =5, r = 2.5, center = true, $fn = 32 );
		}
		translate ( [0,0,5] )
		cylinder ( h=5, r = 1+.5 -.3, center = true, $fn = 32);
	}
//cube ( [20,20,2 ] );
}


motor_shaft();
//gear(); 
//bases();

module base(prof){
tolerance = 0.95; // .2 was too tight. 0.6 almost work.0.9 worked.
translate ( [0,7,0])
cube ( [1.5, 10, 25 ]);

translate ( [5 +2 , 12, 20] )
rotate ( [ 0, 90, 0 ] )
cylinder ( h = 10, r = 2 - tolerance/2 , $fn = 32, center = true );

translate ( [prof/2+1  , 12, 20] )
rotate ( [ 0, 90, 0 ] )
cylinder( h =prof, r =3 , $fn = 32, center= true);


//pies
//translate ( [0,9.5,0 ] )
//cube ( [20, 5, 1.5] );
}

module bases( ){
rotate ( [0,-90, 0] )
base(2);

translate ( [0, 14+ 2.5 - 1, 0 ] )
rotate ( [0,-90, 0] )
base(5-1 +.5);

translate ( [-5, 10, 0] )
cube ( [ 5, 20, 1.5] );

translate ( [-25, 10, 0] )
cube ( [ 5, 20, 1.5] );
}

