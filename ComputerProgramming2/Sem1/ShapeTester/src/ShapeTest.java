import java.util.Scanner;
public class ShapeTest {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Hello, welcome to shape mker! Lest find the volume and surface area for a few shapes.");
		System.out.println("Press 1 for a cubiod, 2 for a prism, and 3 for a cone.");
		int shapen = scanner.nextInt();
		if (shapen == 1) {
			System.out.println("Please enter the width");
			int w = scanner.nextInt();
			System.out.println("Please enter the length");
			int l = scanner.nextInt();
			System.out.println("Please enter the height");
			int h = scanner.nextInt();
			Cuboid c1 = new Cuboid(l,h,w);
			System.out.println("Volume is:" + c1.calcV());
			System.out.println("Surface area is:" + c1.calcS());
		} else if(shapen == 2) {
			System.out.println("Please enter base side a");
			double a = scanner.nextInt();
			System.out.println("Please enter base side b");
			double b = scanner.nextInt();
			System.out.println("Please enter base side c");
			double c = scanner.nextInt();
			System.out.println("Please enter the height");
			double h = scanner.nextInt();
			Prism p1 = new Prism(a,b,c,h);
			System.out.println("Volume is:" + p1.calcV());
			System.out.println("Surface area is:" + p1.calcS());
		}else if(shapen == 3) {
			System.out.println("Please enter the radius");
			double r = scanner.nextInt();
			System.out.println("Please enter the height");
			double h = scanner.nextInt();
			Cone co1 = new Cone(r, h);
			System.out.println("Volume is:" + co1.calcV());
			System.out.println("Surface area is:" + co1.calcS());
		}else {
			System.out.println("That is not one of the options");
		}
		scanner.close();
	}
}
