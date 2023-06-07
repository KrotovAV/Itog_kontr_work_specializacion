package Itog_kontr_work_specializacion.Project;

public abstract class Animals {
	private String name;
	private String possibilities;

	public Animals(String name, String possibilities) {
		this.name = name;
		this.possibilities = possibilities;
	}

	public String getName() {
		return name;
	}

	public String getPossibilities() {
		return possibilities;
	}

	public void setPossibilities(String updatedpossibilities) {
		this.possibilities = updatedpossibilities;
	}

	public abstract void showPossibilities();

	public abstract void changePossibilities(String Possibilities);
}

