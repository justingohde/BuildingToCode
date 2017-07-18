//3D Shapes- Smiley Face

//face
difference(){
    cylinder(5, 40, 40);
    
    translate([15,10,-1]) cylinder(7, 10, 10);
    translate([-15,10,-1]) cylinder(7, 10, 10);
    
    difference(){
      translate([0,-5,-1]) cylinder(7, 30, 30);
      translate([0,13,-2]) cylinder(9, 40, 40);
    }//mouth
}

//eyes
translate([15,2,0]) cylinder(5, 5, 5);
translate([-15,2,0]) cylinder(5, 5, 5);

