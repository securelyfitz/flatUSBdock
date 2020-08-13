
module phone(l,w,h){
    r=h/2;
union(){
    cube([l-h,w-h,h]);
    translate([0,0,r])rotate([0,90,0])cylinder(l-h,r,r);
    translate([0,w-h,r])rotate([0,90,0])cylinder(l-h,r,r);
    translate([0,w-h,r])rotate([90,0,0])cylinder(w-h,r,r);
    translate([l-h,w-h,r])rotate([90,0,0])cylinder(w-h,r,r);
    translate([0,0,r])intersection(){
        rotate([0,-90,0])cylinder(r,r,r);
        rotate([90,0,0])cylinder(r,r,r);
    }
    translate([0,w-h,r])intersection(){
        rotate([0,-90,0])cylinder(r,r,r);
        rotate([-90,0,0])cylinder(r,r,r);
    }
    translate([l-h,w-h,r])intersection(){
        rotate([0,90,0])cylinder(r,r,r);
        rotate([-90,0,0])cylinder(r,r,r);
    }
    translate([l-h,0,r])intersection(){
        rotate([0,90,0])cylinder(r,r,r);
        rotate([90,0,0])cylinder(r,r,r);
    }
}
}


pad=1;
l=158+pad;
w=76.7+pad;
h=7.9+pad;
overlap=2;

usbw=10.5;
usbh=6;
usbhoffset=4;


difference(){
    translate([-h/2-overlap,-overlap-(h/2),0])cube([50,w+overlap+overlap,h+overlap/2]);
    phone(l,w,h);
    translate([-usbw,w/2-usbw/2-h/2,usbhoffset-usbh/2])cube([17,usbw,usbh]);

}