include <handle.scad>

translate([-(15 * c), 0, 0])
{
    union()
    {
        render(convexity = 90)
        {
            intersection()
            {
                translate([-(c / 2), -(c / 10), 0])
                {
                    color("fuchsia") square([(2 * c), (2 * c)], center=true);
                }
                rotate([0, 0, 45])
                {
                    square([(2 * c), (2 * c)], center=true);
                }
            }
        }
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}

translate([-(10 * c), 0, 0])
{
    union()
    {
        render(convexity = 90)
        {
            translate([0, c, 0])
            {
                difference()
                {
                    translate([-(0.7 * c), -1.25, 0])
                    {
                        color("fuchsia") square([(2.4 * c), (4.5 * c)], center=true);
                    }
                    rotate([0, 0, 135])
                    {
                        translate([0, (2 * c), 0])
                        {
                            color("lime") square([(4 * c), (3 * c)], center=true);
                        }
                    }
                    rotate([0, 0, 30])
                    {
                        translate([0, (3 * c), 0])
                        {
                            color("lime") square([(4 * c), (3 * c)], center=true);
                        }
                    }
                }
            }
            difference()
            {
                translate([-(0.7 * c), -1.25, 0])
                {
                    color("fuchsia") square([(2.4 * c), (3 * c)], center=true);
                }
                rotate([0, 0, 135])
                {
                    translate([0, (2.75 * c), 0])
                    {
                        color("lime") square([(4 * c), (3 * c)], center=true);
                    }
                }
                rotate([0, 0, 45])
                {
                    translate([0, (2.5* c), 0])
                    {
                        color("lime") square([(4 * c), (3 * c)], center=true);
                    }
                }
            }
        }
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}


translate([-(5 * c), 0, 0])
{
    union()
    {
        render(convexity = 90)
        {
            difference()
            {
                translate([-(0.5 * c), -1.25, 0])
                {
                    color("fuchsia") square([(2* c), (4 * c)], center=true);
                }
                rotate([0, 0,135])
                {
                    translate([0, (2.25 * c), 0])
                    {
                        color("lime") square([(4 * c), (3 * c)], center=true);
                    }
                }
                rotate([0, 0,30])
                {
                    translate([0, (2.25 * c), 0])
                    {
                        color("lime") square([(4 * c), (3 * c)], center=true);
                    }
                }
            }
        }
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}
