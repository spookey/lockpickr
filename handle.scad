// scale variable ~ this is the universal unit
c = 3;

module handle(overlap)
{

    // how long is the thin part of the handle
    s_len = (30 * c) + overlap;

    rotate([0, 0, 180])
    {
        union()
        {
            // thin part
            translate([-(c/2), -overlap])
            {
                square([c, s_len], center=false);
            }
            // the handle
            translate([-(c * 2), (s_len - overlap)])
            {
                square([c * 4, (s_len / 2)], center=false);
            }
        }
    }
}


