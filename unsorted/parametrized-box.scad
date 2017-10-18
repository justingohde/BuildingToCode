Length = 120;
Width = 50;
Height = 30;
Wall = 2;

difference() {
    cube([Length, Width, Height]);
    translate([Wall, Wall, Wall]) {
        cube([Length - 2*Wall, Width - 2*Wall, Height]);
    }
}
