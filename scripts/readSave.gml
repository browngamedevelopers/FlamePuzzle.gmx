// reads any data associated with a saved game
ini_open("savedata.ini");
var i;
for (i = 0; i < LEVELS; i++) {
    global.levelArray[i] = ini_read_real('levels', string(i), 0);
}
ini_close();
