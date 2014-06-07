/** Created by Jose Araujo. 2014-06-06
	Simple gear (like the ones coming in hobby
	metal motors.
*/

shaft= 1;  // center shaft radio
h = 5; // lenght of shaft
gr = 2.5 ; //gear radio
nt = 8; //number of tooth. 
td = 1; //teeth depth.
pi = 3.1415926535897932384626433;
c = 2*pi *shaft; // circumference of shaft

cylinder ( h= h, r= shaft , $fn= 50 );

for ( i= [0: (nt -1)] ){	
	//a = i * 360/nt; 

	//translate ( [-sin( a)* shaft,cos(a) *shaft,0])
	rotate( [0,0, i*360/nt]) 
	translate ( [-c/(nt*2)/2, shaft,0])
	cube (size=[c/(nt*2),gr-shaft, h]);
}