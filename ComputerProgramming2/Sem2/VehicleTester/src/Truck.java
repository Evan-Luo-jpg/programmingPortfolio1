
public class Truck extends Vehicle{
	int bedSize;
	int hitch;
	boolean fourWheelDrive;
	
	public Truck (int bedSize, int hitch, boolean fourWheelDrive,int wheels, int passengers, int seats) {
		super(wheels, passengers, seats);
		this.bedSize = bedSize;
		this.hitch = hitch;
		this.fourWheelDrive = fourWheelDrive;
		
	}
	public boolean towCar(int carSize) {
		boolean canTow = false;
		if (carSize >= 50) {
			canTow = false;
		}else {
			canTow = true;
		}
		return canTow;
	}
}
