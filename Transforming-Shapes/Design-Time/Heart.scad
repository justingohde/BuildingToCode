//Transforming Shapes - Design Time: Heart

$fn =50;

hull(){
    cylinder(h=1, r=1);
    translate([7,3,0]) cylinder(h=1, r=4);
}
mirror([0,1,0])
hull(){
    cylinder(h=1, r=1);
    translate([7,3,0]) cylinder(h=1, r=4);
}