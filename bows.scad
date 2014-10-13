include <handle.scad>

module bow()
{
    union()
    {
        render(convexity = 90)
        {
            intersection()
            {
                translate([-c, c, 0])
                {
                    color("fuchsia") square([(3 * c), (3 * c)], center=true);
                }
                translate([-(1.5 * c)-c, -(c / 2), 0])
                {
                    difference()
                    {
                        circle(r=(3 * c), $fn=90);
                        circle(r=(2 * c), $fn=90);
                    }
                }
            }
        }
    }
}


translate([-(15 * c), 0, 0])
{
    union()
    {
        bow();
        handle(-(c / 2));
    }
}

translate([-(10 * c), 0, 0])
{
    union()
    {
        bow();
        translate([-(2.5 * c), (2 * c), 0])
        {
            circle(d=c, $fn=90);
        }
        handle(-(c / 2));
    }
}

a = sqrt(pow(c,2)/2);

translate([-(5 * c), 0, 0])
{
    union()
    {
        bow();
        translate([-(2.5 * c), (2 * c), 0])
        {
            rotate([0, 0, 45]) square([a, a], center=true);
        }
        handle(-(c / 2));
    }
}
