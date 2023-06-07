package Itog_kontr_work_specializacion.Project;

public class Main {
    public static void main(String[] args) {
        DB db = new DB();
        Menu menu = new Menu(db);
        
        menu.showMenu();
    }
}
