// saves the input level as being completed.
// two arguments: level number and score
var level = argument0;
var score = argument1;
ini_open("savedata.ini");
global.levelArray[argument0] = 1;
ini_write_real('levelComplete', string(level), 1);
ini_write_real('levelScore', string(level), score);
ini_close();
