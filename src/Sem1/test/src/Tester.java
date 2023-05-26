import java.util.LinkedList;

public class Tester {
	public void main(String[] args){
	LinkedList<String> words = new LinkedList<String>();
	words.addLast("abc");
	words.addLast("def");
	words.addLast("ghi");
	System.out.print(words.removeLast());
	System.out.print(words.removeFirst());
	System.out.print(words.removeLast());
	}
}
