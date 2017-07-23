translate([20, 0, 0]) {
    linear_extrude(height=10) {
        text("MARIUS", size=20);
    }
}

difference() {
    translate([0, 2.5, 0]) cube([120, 15, 3]);
    translate([10, 10, -1]) cylinder(h=20, d=10);
}
