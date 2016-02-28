// reads any data associated with a saved game
ini_open("savedata.ini");
var i;
for (i = 0; i < LEVELS; i++) {
    global.levelCompleteArray[i] = ini_read_real('levelComplete', string(i), 0);
}
for (i = 0; i < LEVELS; i++) {
    global.levelScoreArray[i] = ini_read_real('levelScore', string(i), 0);
}
ini_close();
