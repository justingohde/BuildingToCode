//Transforming Shapes - Design Time: Top Hat

$fn =50;

difference(){
    union(){
        minkowski(){
            sphere(1);
            cylinder(h=1, r=12);
        }//brim
        minkowski(){
            sphere(1);
            hull(){
              cylinder(h=3, r=7);
              translate([0,0,15])cylinder(h=2, r=9);
            }
        }//stack
    }//union
        
    difference(){
        translate([0,0,-2])cylinder(h=18, r=8);
    }//hole
}

