package Itog_kontr_work_specializacion.Project;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Menu {
	private final DB db;
	private final Scanner scanner;

	public Menu(DB db) {
		this.db = db;
		scanner = new Scanner(System.in);
	}

	public void showMenu() {
		while (true) {
			try {
				View.printEmrty();
                View.printString(StringText.getMenuName("MainMenu"));
				
				String choice = scanner.nextLine();

				switch (choice) {
					case "aa" -> addNewAnimal();
					case "da" -> delAnimal();
					case "saa" -> db.showAllAnimals();
					case "sp" -> showAnimalPossibilities();
					case "cp" -> changePossibilities();
					case "e" -> {
						View.printString(StringText.getMenuName("Done"));
						return;
					}
					default -> View.printString(StringText.getMenuName("BadChoise"));
				}
			} catch (InputMismatchException e) {
				View.printString(StringText.getMenuName("Error"));
			}
		}
	}


	private void addNewAnimal() {
		View.printString(StringText.getMenuName("Name"));
		String name = scanner.nextLine();
		View.printString(StringText.getMenuName("Possibilities"));
		
		String possibilities = scanner.nextLine();

		View.printString(StringText.getMenuName("ClassMenu"));
		String animalsClass = scanner.nextLine();

		Animals animal;
		switch (animalsClass) {
			case "dg" -> animal = new Dogs(name, possibilities);
			case "c" -> animal = new Cats(name, possibilities);
			case "ha" -> animal = new Hamsters(name, possibilities);
			case "dn" -> animal = new Donkeys(name, possibilities);
			case "ho" -> animal = new Horses(name, possibilities);
			default -> {
				View.printString(StringText.getMenuName("BadClassChoise"));
				return;
			}
		}

		db.addAnimal(animal);
		View.printString(StringText.getMenuName("SuccessAdd"));
	}

	private void delAnimal() {
		View.printString(StringText.getMenuName("Name"));
		String name = scanner.nextLine();
		db.delAnimal(name);
	}

	private void showAnimalPossibilities() {
		View.printString(StringText.getMenuName("Name"));
		String name = scanner.nextLine();
		db.showAnimalPossibilities(name);
	}

	private void changePossibilities() {
		View.printString(StringText.getMenuName("Name"));
		String name = scanner.nextLine();
		View.printString(StringText.getMenuName("Possibilities"));
		String possibilities = scanner.nextLine();

		db.changePossibilities(name, possibilities);
		View.printString(StringText.getMenuName("SuccessPossibilities"));
	}
}
