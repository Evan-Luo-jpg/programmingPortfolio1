
public class VehicleTester {

	public static void main(String[] args) {
		Car c1 = new Car(4, 5, true, 4, 5, 5);
		Vehicle v1 = new Vehicle(0,0,0);
		Motorcycle m1 = new Motorcycle(true, 10, true, 2, 1, 1);
		Truck t1 = new Truck(5, 1, true, 4, 2, 2);
		System.out.println("The motorcycle is stopped "+m1.stoppie(10));
		System.out.println("The position of the vehicle is "+v1.driveForward("forward", 2));
		System.out.println("The position of the car is " +c1.driveBackward("backward", 2));
		System.out.println("The truck can tow the car "+t1.towCar(10));

	}

}
