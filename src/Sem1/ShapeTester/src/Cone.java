import java.lang.Math;
public class Cone {
	//member variables
	private double r,h;
	
	// constructor
	Cone(double r, double h){
		this.r = r;
		this.h = h;
		
	}
	
	public double calcV() {
		double volume = Math.PI*Math.pow(r, 2)*h/3;
		return volume;
	}
	
	public double calcS() {
		double surf = Math.PI*r*(r+Math.sqrt(Math.pow(h, 2)+Math.pow(r, 2)));
		return surf;
	}
	
}
