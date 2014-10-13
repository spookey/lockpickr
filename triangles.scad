include <handle.scad>

module arrow()
{
    union()
    {
        render(convexity = 90)
        {
            difference()
            {
                translate([-(0.5 * c), 0, 0])
                {
                   color("fuchsia") square([(2 * c), (2 * c)], center=true);
                }
                translate([-c, c, 0])
                {
                    rotate([0, 0, 45])
                    {
                        color("lime") square([(4 * c), (2 * c)], center=true);
                    }
                }
                translate([-c, -(1.5 * c), 0])
                {
                    rotate([0, 0, 65])
                    {
                        color("fuchsia") square([c, (2 * c)], center=true);
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
        translate([0, (2 * c), 0])
        {
            arrow();
        }
        translate([0, c, 0])
        {
            arrow();
        }
        arrow();
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}


translate([-(5 * c), 0, 0])
{
    union()
    {
        translate([0, c, 0])
        {
            arrow();
        }
        arrow();
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}

translate([0, 0, 0])
{
    union()
    {
        arrow();
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}
