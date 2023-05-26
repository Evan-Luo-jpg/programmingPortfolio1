package test;

import java.util.*;
public class tester {
	public static void main(String[] args) {
		LinkedList<String> linkedList = new LinkedList<>(List.of("5", "10", "17", "90", "100"));
		for (String number: linkedList) {
			System.out.println(number);
		}
	}
}