
public class Car extends Vehicle{
	int doors;
	int trunkSpace;
	boolean steeringWheel;
	
	public Car(int doors, int trunkSpace, boolean steeringWheel, int wheels, int passengers, int seats) {
		super(wheels, passengers, seats);
		this.doors = doors;
		this.steeringWheel = steeringWheel;
		this.trunkSpace = trunkSpace;
		
	}
	
	public int driveBackward(String direction, int speed) {
		int position = 0;
		if (direction == "backward") {
			position = position - speed;
		}
		
		return position;
	}
	
}
