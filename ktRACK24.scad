//
// ktRack24
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;





translate([0, 0, 20]) A();
B();
//translate([10, 10, 30]) UNIT();

module A()
{
difference()
{
    union()
    {
        translate([-10, -10, 100]) cube([60, 60, th*3]);
        cube([40, 40, 90]);
    }
    translate([-10+th, -10+th, 100-gap1]) cube([60-th*2, 60-th*2, th*2]);
    translate([th, th, -10]) cube([40-th*2, 40-th*2, 105]);
}        
        translate([0, 0, 90]) cube([5, 5, 10+th*3]);
        translate([40-5, 0, 90]) cube([5, 5, 10+th*3]);
        translate([0, 40-5, 90]) cube([5, 5, 10+th*3]);
        translate([40-5, 40-5, 90]) cube([5, 5, 10+th*3]);
}

module B()
{
difference()
{
    union()
    {
        translate([-20, -20, 0]) rotate([0, 45, 45]) cube([30, th, 60]);
        translate([40+20, -20, 0]) rotate([0, 45, 90+45]) cube([30, th, 60]);
        translate([40+20, 40+20, 0]) rotate([0, 45, 180+45]) cube([30, th, 60]);
        translate([-20, 40+20, 0]) rotate([0, 45, 270+45]) cube([30, th, 60]);
    }
    translate([-250, -250, -500]) cube([500, 500, 500]);
    
    translate([-1/2, -1/2, 20]) A();

}
}

module WAKU()
{
difference()
{    union()
    {
        cube([40, 40, 90]);
    }
    translate([th+1, th+1, -10]) cube([40-(th+1)*2, 40-(th+1)*2, 105]);
}
}

module LEFT()
{
difference()
{
    union()
    {
        translate([0, 0, 50-2-5]) rotate([16, 0, 0]) cube([25, 207, 10]);
        translate([0, 0, 50-2-5]) rotate([18, 0, 0]) cube([25, 5, 20]);
        translate([0, 0, 0]) cube([10, 10, 50+5-5]);
        translate([0, 180, 0]) rotate([0, 0, 0]) cube([10, 10, 105]);
        translate([0, 0, 0]) cube([10, 190, 10]);
        translate([0, 58, 55-6]) cube([10, 10, 20]);
        //translate([0, 58+10, 55-6]) cube([25, 10, 20]);
        //translate([0, 58-10, 55-6]) cube([25, 10, 12]);
        //translate([0, 58, 55-6+10]) cube([25, 10, 10]);
        
        translate([0, 160, 82-4]) cube([10, 10, 20]);
        //translate([0, 160+10, 82-4]) cube([25, 20, 20]);
        //translate([0, 160-10, 82-4]) cube([25, 10, 12]);
        //translate([0, 160, 82-4+10]) cube([25, 10, 10]);
        
        //translate([0+10, 180, 50+10]) cube([15, 10, 20]);
        //translate([0+10, 180, 50-10]) cube([15, 10, 10]);
        //translate([0, 180-10, 50-10]) cube([25, 10, 40]);
    }
    
    translate([6, 58+10/2, 55-6+10/2]) rotate([0, 90, 0]) rear_screw_hole();
    translate([6, 160+10/2, 82-4+10/2]) rotate([0, 90, 0]) rear_screw_hole();
    translate([6, 180+10/2, 50+10/2]) rotate([0, 90, 0]) rear_screw_hole();
    
    translate([0, -10, 50-2-5]) rotate([60, 0, 0]) cube([25, 30, 20]);
    translate([0, 180+10, 0]) rotate([0, 0, 0]) cube([25, 10, 115]);
    
    translate([10, -10, 50-2-20]) cube([25, 150, 20]);
}
}



module UNIT()
{
    cube([27+1,20+1, 66+1,]);
}



module screw_hole()
{
    cylinder( 10, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 10, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}
module screw_hole2()
{
    translate([0, 0, -5]) cylinder( 20, 1.6, 1.6, $fn=30 );
    translate( [0, 0, 1.5] ) cylinder( 3, 6.5/2+0.1, 6.5/2+0.1, $fn=6 );
}


module rear_screw_hole()
{
    translate([0, 0, 3]) cylinder(5, 1.5, 1.5, $fn=30);
    translate([0, 0, 2.2-gap1]) cylinder(0.8+gap2, 1.5+0.7, 1.5, $fn=30);
    translate([0, 0, -gap1]) cylinder(2.2+gap1, 3.25+0.4, 3.25-0.6, $fn=30);
    translate([0, 0, -10]) cylinder(10, 3.25+0.4, 3.25+0.4, $fn=30);
}