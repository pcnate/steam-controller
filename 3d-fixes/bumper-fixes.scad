//color( "#004400", 1 )
//import("./valve-source/BoardOutlineLuna.stl");
color( "#333333", 1 )
import("./valve-source/BumperGPrime.stl");

// color("#000000") {
//   import("./valve-source/DonutPuck.stl");
//   import("./valve-source/Puck_006.stl");
//   import("./valve-source/Puck_007.stl");
//   import("./valve-source/Puck_008.stl");
//   import("./valve-source/Puck_009.stl");
//   import("./valve-source/Puck_010.stl");
//   import("./valve-source/Puck_05.stl");
// }

// color("#C0C0C0") {
//   import("./valve-source/SHIELD.stl");
//   import("./valve-source/TapeSnapDome14_5d_005.stl");
//   import("./valve-source/TapeSnapDome14_5d_006.stl");
//   import("./valve-source/TapeSnapDome14_5d_007.stl");
//   import("./valve-source/TapeSnapDome14_5d_04.stl");

// }

// color("#777777") {
//   import("./valve-source/TriggerCapLeftJAG.stl");
//   import("./valve-source/TriggerCapRightJAG.stl");
// }


boardThickness = 1.55;

buttonPressWidth = 1;
buttonPressHeight = boardThickness / 0.5;
buttonPressDepth = 0.5;

wingLength = 15;
wingThickness = 2;
wingWidth = 6;
wingOffsetZ = 1.75 - wingWidth;

buttonOffsetX = 47; // distance from center of board to the right
buttonOffsetY = 32; // distance from the center of the board to the front
buttonOffsetZ = - buttonPressHeight / 2 - boardThickness /2; // distance from center down to match board


color("orange") {

  translate([ buttonOffsetX, buttonOffsetY-buttonPressDepth, buttonOffsetZ ]) 
  cube([ buttonPressWidth, buttonPressDepth, buttonPressHeight ]);
  
  translate([ buttonOffsetX - 13, buttonOffsetY, wingOffsetZ ]) 
  cube([ wingLength, wingThickness, wingWidth ]);
}