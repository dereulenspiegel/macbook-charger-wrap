orig_model="./Macbook_40W_Charger_Wrap.STL";

module orig() {
  translate([0,0,0]){
    import(orig_model);
  };
};

module plugHole() {

  holeX=78;
  holeY=60;
  holeZ=31;
  color("red"){
    union(){
      translate([holeX,holeY,holeZ]){
        cube([25,10,30],center=true);
      };
      translate([holeX,holeY,holeZ-15]){
        rotate([45,0,0]){
          cube([25,7.3,7.3], center=true);
        };
      };
    };
  };
};

difference() {
  orig();
  plugHole();
};