/** Created by Jose Araujo. 2014-06-06
	Simple gear (like the ones coming in hobby
	metal motors).
*/
pi = 3.1415926535897932384626433;

module Gear ( 
			shaft // center shaft radio
			, h  // length of shaft
			, gr //gear radio
			, nt //number of tooth. 
			, td //teeth depth.			
			, hollow_shaft // indicates if the shaft is solid or if it a holow
			, ringr // the radius of the ring that holds the tooth together
) {
c = 2*pi *shaft; // circumference of shaft

if ( hollow_shaft == 0 )  
    cylinder ( h= h, r= shaft , $fn= 50 );

//  ring for tooth.
difference (){
    cylinder( h= h, r= ringr, $fn = 50 ) ;
    cylinder( h = h, r=shaft, $fn = 50 ) ;
}

// tooth
for ( i= [0: (nt -1)] ){	
	
	//translate ( [-sin( a)* shaft,cos(a) *shaft,0])
	rotate( [0,0, i*360/nt]) 
//	translate ( [-c/(nt*2)/2, shaft,0])
//	cube (size=[c/(nt*2),gr-shaft, h]);
	translate ( [-td/2, shaft,0])
	cube (size=[td,gr-shaft, h]);
}
}


Gear ( shaft= 0.95,  // center shaft radio
			h = 5, // lenght of shaft
	gr = 2.5 , //gear radio
nt = 8, //number of tooth. 
td = 0.5, //teeth depth.
hollow_shaft = 1, // indicates if the shaft is solid or if it a holow
ringr = 1 // the radius of the ring that holds the tooth together
) ;

