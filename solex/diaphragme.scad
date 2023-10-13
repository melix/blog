include <threads2.scad>

// diamètre du diaphragme
diam=60;
// diamètre interne du porte filtre
diam_filter=104;

difference() {
    cylinder(h=2,d=diam_filter, $fn=100);
    
        cylinder(h=2,d=diam, $fn=100);
}

translate([-diam_filter/5,-4*diam_filter/9,2]) {
    linear_extrude(1)
    text(str(diam,"mm"), size=diam_filter/10);
}
