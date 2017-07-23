// 3D Shapes- Smiley Face

// face
difference() {
    cylinder(h=5, r=40);
    
    translate([15, 10, -1]) cylinder(h=7, r=10);
    translate([-15, 10, -1]) cylinder(h=7, r=10);
    
    // mouth
    difference() {
      translate([0, -5, -1]) cylinder(h=7, r=30);
      translate([0, 13, -2]) cylinder(h=9, r=40);
    }
}

// eyes
translate([15, 2, 0]) cylinder(h=5, r=5);
translate([-15, 2, 0]) cylinder(h=5, r=5);

// loop
translate([0, 40, 0]) difference() {
    cylinder(h=5, r=8);
    cylinder(h=5, r=4);
}
