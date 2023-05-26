import java.lang.Math;
public class Prism {
	//member variables
	private double a,b,c,h;
	
	// constructor
	Prism(double a, double b, double c, double h){
		this.a = a;
		this.b = b;
		this.c = c;
		this.h = h;
	}
	
	public double calcV() {
		double volume = 1/4 * h * Math.sqrt(-1 * Math.pow(a, 4) + 2 * Math.pow(a * b, 2) + 2 * Math.pow(a * c, 2) - Math.pow(b, 4) + 2 * Math.pow(b * c, 2) - Math.pow(c, 4));
		return volume;
	}
	
	public double calcS() {
		double surf = a*h+b*h+c*h+1/2*Math.sqrt(-1*Math.pow(a,4)+2*Math.pow(a*b,2)+2*Math.pow(a*c, 2)-Math.pow(b, 4)+2*Math.pow(b*c, 2)-Math.pow(c, 4));
		return surf;
	}
	
}
