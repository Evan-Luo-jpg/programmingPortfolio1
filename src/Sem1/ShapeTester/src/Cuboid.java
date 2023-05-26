
public class Cuboid {
	//member variables
	private int l,w,h;
	
	// constructor
	Cuboid(int l, int h, int w){
		this.l = l;
		this.w = w;
		this.h = h;
		
	}

	public int calcV() {
		int volume = l*w*h;
		return volume;
	}
	
	public int calcS() {
		int surf = 2*l*h + 2*w*l + 2*h*w;
		return surf;
	}
	
}
