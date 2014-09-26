include <handle.scad>

translate([-(15 * c), 0, 0])
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
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}
