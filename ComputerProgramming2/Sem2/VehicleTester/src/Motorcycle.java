
public class Motorcycle extends Vehicle{
	boolean handlebars;
	int narrowSize;
	boolean beltDriven;
	
	public Motorcycle(boolean handlebars, int narrowSize, boolean beltDriven, int wheels, int passengers, int seats) {
		super(wheels, passengers, seats);
		this.beltDriven = beltDriven;
		this.handlebars = handlebars;
		this.narrowSize = narrowSize;
	}
	
	public boolean stoppie(int speed) {
		boolean isStopped = false;
		for(int i = 0; i>= speed; i++) {
			speed = speed - 1;
		}
		
		if(speed == 0) {
			isStopped = true;
		}
		return isStopped;
	}
}
