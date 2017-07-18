difference() {
    sphere(d=100);
    
    cylinder(d=50, h=125, center=true);
    #rotate([90, 0, 0]) cylinder(d=50, h=125, center=true);
    rotate([0, 90, 0]) cylinder(d=50, h=125, center=true);
}