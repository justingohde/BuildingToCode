//3D Shapes- Hole and Pin Test

//Pins
union(){
    cube([50, 30, 5]);
    translate([10, 15, 0]) cylinder(10, 5, 5);
    translate([35, 15, 0]) cylinder(10, 10, 10);
}

//Holes
translate ([0,40,0]) difference(){
cube([50, 30, 5]);
    
translate([10, 15, -1]) cylinder(10, 6, 6);
translate([35, 15, -1]) cylinder(10, 11, 11);
}