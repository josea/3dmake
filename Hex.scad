/** Created by Jose Araujo. 2014-6-7.

    Just standard hex key (parametric) with no handle; 
*/


module Hex(
				radius // radius in mm
				, h // height of hex
		 ){
cylinder ( r= radius, h =h, $fn = 6 ) ;
}

Hex(radius = 5,h  = 25);

