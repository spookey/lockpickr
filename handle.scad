// everyting depends from that variable
c = 2;


module handle(xp, yp, xs, ys, overlap)
{
    // xp yp == fusspunkt
    // xs ys == stab
    // xg yg == griff

    ys = ys + overlap;

    xg = xs * 4;
    yg = ys / 2;

    rotate([0, 0, 180])
    {
        union()
        {
            translate([xp - (xs/2), yp - overlap])
            {
                square([xs, ys], center=false);
            }
            translate([xp - (xg/2), yp + ys - overlap])
            {
                square([xg, yg], center=false);
            }
        }
    }
}


