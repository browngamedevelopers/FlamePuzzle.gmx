// deletes any data associated with a saved game
ini_open('savedata.ini');
ini_section_delete('levels');
ini_close();
