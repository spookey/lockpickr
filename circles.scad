include <handle.scad>

translate([-(15 * c), 0, 0])
{
    union()
    {
        circle(r=c, $fn=90);
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}

translate([-(10 * c), 0, 0])
{
    union()
    {
        circle(r=c, $fn=90);
        translate([0, (c * 1.5), 0])
        {
            circle(r=(c/1.25), $fn=90);
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
            intersection()
            {
                translate([-(c / 2), 0, 0])
                {
                    color("fuchsia") square([(2 * c), (2 * c)], center=true);
                }
                translate([-(c / 4), 0, 0])
                {
                    circle(r=c, $fn=90);
                }
            }
        }
        handle(0, 0, c, (30 * c), -(c / 2));
    }
}
