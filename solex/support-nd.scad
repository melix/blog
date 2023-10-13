include <threads2.scad>

// Diamètre externe du filtre
diametre_externe=110;
// Hauteur du support
hauteur_support=20;
// Diamètre du filtre
diam_filter=50;

difference() {
    cylinder(h=hauteur_support,d=diametre_externe, $fn=100);
    union() {
    translate([0,0,4]) {
        cylinder(h=20,d=diametre_externe-5, $fn=100);
    }
    metric_thread(diam_filter+0.7, 0.75 ,10, internal=true);
}
}
