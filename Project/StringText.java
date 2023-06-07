package Itog_kontr_work_specializacion.Project;

import java.util.HashMap;
import java.util.Map;

public class StringText {
    public static String getMenuName(String menuName) {
        Map<String, String> map = new HashMap<>();

        map.put("Path", "Itog_kontr_work_specializacion/Project/db.txt");
        
        map.put("MainMenu", "| aa - add animal | saa - show all animal | da - delite animal | sp - show possibilities| cp - change possibilities | e - exit  |\nMake a choice");
        map.put("Done", "Done");
        map.put("BadChoise", "Bad choise, try again!");
        map.put("Error", "! ERROR, Wrong command! Try again !");
        map.put("Name", "Write animal name "); 
        map.put("Possibilities", "Write animal possibilities ");

        map.put("ClassMenu", "| dg - dogs | c - cats | ha - hamsters | dn - donkey | ho - horses |\nMake a choice");
        map.put("BadClassChoise", "Bad class choise, try again!");
        map.put("SuccessAdd", "Animal add in database successfully");
        map.put("SuccessDel", "Animal delite from database successfully");
        map.put("SuccessPossibilities", "Animal possibilities change successfully");

        map.put("AnimalName", "Name of animal ");
        map.put("NotFound", " not found");

        map.put("NoClass", "! ERROR, Wrong! No name animal class!");
        map.put("ErrorData", "! ERROR, Wrong! Not correct data!");
        map.put("SuccessDataBase", "The database has been loaded successfully!");
        map.put("ErrorDataBase", "! ERROR, Wrong! The database not loaded !");
        map.put("FileNotFound", "! ERROR, Wrong! File not found !");
        map.put("SuccessDataBaseSave", "The database has been saved successfully!");
        map.put("ErrorDataBaseSave", "! ERROR, Wrong! The database not saved !");
        
        return map.get(menuName);
    }
}
