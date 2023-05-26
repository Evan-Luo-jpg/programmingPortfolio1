
public class Vehicle {
	int wheels;
	int passengers;
	int seats;
	
	public Vehicle() {
		wheels = 0;
		passengers = 0;
		seats = 0;
	}
	
	public Vehicle(int wheels, int passengers, int seats) {
		this.passengers = passengers;
		this.seats = seats;
		this.wheels = wheels;
	}
	
	public int driveForward(String direction, int speed) {
		int position = 0;
	
		if(direction == "forward") {
			position = position+speed;
		}
		return position;
	}
}
