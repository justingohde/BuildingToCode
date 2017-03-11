translate([20,0,0]) 
  linear_extrude(height=10)
    text("MARIUS", size=20, font="Noteworthy:style=Bold");

difference() {
    union() {
        translate([7.5,2.5,0]) cube([120-7.5,15,3]);
        translate([7.5,10,0]) cylinder(d=15, h=3);
    }
    translate([10,10,-1]) cylinder(h=20, d=10);
}
