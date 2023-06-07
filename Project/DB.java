package Itog_kontr_work_specializacion.Project;

import java.io.*;
import java.util.*;

public class DB {
	private final List<Animals> animals;
	private static final String path = StringText.getMenuName("Path");
	public DB() {
		animals = new ArrayList<>();
		loadDB();
	}
    
	public void addAnimal(Animals animal) {
		animals.add(animal);
		saveDB();
	}

    public void delAnimal(String name) {
		for (Animals animal : animals) {
			if (animal.getName().equals(name)) {
				animals.remove(animal);
				View.printString(StringText.getMenuName("SuccessDel"));
				saveDB();
				return;
			}
		}
		View.printString(StringText.getMenuName("AnimalName") + name + StringText.getMenuName("NotFound"));
	}
	
	public void showAnimalPossibilities(String name) {
		for (Animals animal : animals) {
			if (animal.getName().equals(name)) {
				animal.showPossibilities();
				return;
			}
		}
		View.printString(StringText.getMenuName("AnimalName") + name + StringText.getMenuName("NotFound"));
	}

    
	public void changePossibilities(String name, String possibilities) {
		for (Animals animal : animals) {
			if (animal.getName().equals(name)) {
				animal.changePossibilities(possibilities);
				saveDB();
				View.printString(StringText.getMenuName("SuccessPossibilities"));
				return;
			}
		}
		View.printString(StringText.getMenuName("AnimalName") + name + StringText.getMenuName("NotFound"));
	}


	private void loadDB() {
		try (BufferedReader reader = new BufferedReader(new FileReader(path))) {
			String line;
			while ((line = reader.readLine()) != null) {
				String[] data = line.split(",");
				if (data.length >= 3) {
					String className = data[0];
					String name = data[1];
					String possibilities = String.join(",", Arrays.copyOfRange(data, 2, data.length));

					Animals animal;
					switch (className) {
						case "Dogs" -> animal = new Dogs(name, possibilities);
						case "Cats" -> animal = new Cats(name, possibilities);
						case "Hamsters" -> animal = new Hamsters(name, possibilities);
						case "Donkeys" -> animal = new Donkeys(name, possibilities);
						case "Horses" -> animal = new Horses(name, possibilities);
						default -> {
							View.printString(StringText.getMenuName("NoClass") + className);
							continue;
						}
					}
					animals.add(animal);
				} else {
					View.printString(StringText.getMenuName("NoClass") + line);
				}
			}
			View.printString(StringText.getMenuName("SuccessDataBase"));
		} catch (IOException e) {
			View.printString(StringText.getMenuName("ErrorDataBase") + e.getMessage());
		}
	}


	public void showAllAnimals() {
		try {
			File file = new File(path);
			Scanner fileScanner = new Scanner(file);

			while (fileScanner.hasNextLine()) {
				String animalData = fileScanner.nextLine();
				System.out.println(animalData);
			}

			fileScanner.close();
		} catch (FileNotFoundException e) {
			View.printString(StringText.getMenuName("FileNotFound"));
		}
	}

	private void saveDB() {
		try (BufferedWriter writer = new BufferedWriter(new FileWriter(path))) {
			for (Animals animal : animals) {
				String className = animal.getClass().getSimpleName();
				String name = animal.getName();
				String possibilities = animal.getPossibilities().replaceAll(",\\s+", ",");

				String line = className + "," + name + "," + possibilities;
				writer.write(line);
				writer.newLine();
			}
			View.printString(StringText.getMenuName("SuccessDataBaseSave"));
		} catch (IOException e) {
			System.out.println("Ошибка при сохранении базы данных: " + e.getMessage());
			View.printString(StringText.getMenuName("ErrorDataBaseSave") + e.getMessage());
		}
	}

}
