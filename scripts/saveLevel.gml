// saves the input level as being completed
ini_open("savedata.ini");
global.levelArray[argument0] = 1;
ini_write_real('levels', string(argument0), 1);
ini_close();
