include <threads2.scad>

// Diamètre externe du filtre
diametre_externe=125;
// Hauteur du support
hauteur_support=20;
// Diamètre du filtre
diam_filter=70;

difference() {
    cylinder(h=hauteur_support,d=diametre_externe, $fn=40);
    union() {
    translate([0,0,2]) {
        cylinder(h=20,d=diametre_externe-3, $fn=40);
    }
    metric_thread(diam_filter+0.7, 0.75 ,10, internal=true);
}
}
