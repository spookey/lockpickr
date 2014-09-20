include <handle.scad>
include <globals.scad>

translate([-(10 * c), 0, 0])
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

translate([-(5 * c), 0, 0])
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
                rotate([0, 0, 45])
                {
                    translate([0, (1.25 * c), 0])
                    {
                        color("lime") square([(4 * c), (2 * c)], center=true);
                    }
                }

            }
        }
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}
