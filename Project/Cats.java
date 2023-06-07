package Itog_kontr_work_specializacion.Project;

public class Cats extends Animals {
	public Cats(String name, String possibilities) {
		super(name, possibilities);
	}

	@Override
	public void showPossibilities() {
		System.out.println("Possibilities " + getName() + ": " + getPossibilities());
	}

	@Override
	public void changePossibilities(String possibilities) {
		String updatedPossibilities = getPossibilities() + "," + possibilities;
		setPossibilities(updatedPossibilities);
		System.out.println("Name " + getName() + " new possibilities " + possibilities);
	}
}
