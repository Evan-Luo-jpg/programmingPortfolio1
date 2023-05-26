import java.util.Scanner;
import java.util.Random;

public class State {
  String display;
  String word;
  int guesses;
  char currentGuess;
  Scanner input; 
  public State() {
    //word list Steven Mai
    String[] words = { "linux", "programming", "assembly", "minecraft", "microsoft", "apple", "iphone", "samsung",
        "macbook", "windows", "msdos", "ethernet", "alienware", "finder", "preposterous", "technology", "wozniak", "dvorak",
        "mohammed", "glasses", "keyboard", "xylophone", "bubinga", "fluke", "galbladder", "reddit", "standardized", "kapptie" , "trimmer"
    };

    // randomly choose word Alon 
    Random rand = new Random();
    int index = rand.nextInt(words.length);
    word = words[index];

    //initialize scanner
    input = new Scanner(System.in);
      
    //debugging 
    //System.out.println(word);

    // display Alon
    display = new String(new char[word.length()]).replaceAll(".", "_");
    System.out.println(display);

    // guesses
    guesses = 7;
  }

  public int input() {

    // enter guess Steven Mai
    System.out.println("Guesses remaining: " + guesses);
    System.out.print("Enter a lowercase character: ");
    currentGuess = input.next().charAt(0); 
      
    //check if guess is in the word to guess Done by Ethan suresh
    if (word.indexOf(currentGuess) != -1) {
      displayWord();
      int result = display.equals(word) ? 1 : 0;
      return result;
    } else {
      guesses -= 1;
      displayHangman(7-guesses);
      if (guesses == 0) {
        return -1;
      } else {
        return 0;
      }
    }
  }

//Displays word and blank spaces Alon Galili
//correctly displays word with multiple repeated characters 
  public void displayWord() {
      StringBuilder mod = new StringBuilder(display);
      for (int i = 0; i < word.length(); i++) {
          if (display.charAt(i) == '_' && word.charAt(i) == currentGuess) {
            mod.setCharAt(i, currentGuess);
          } 
      }
      display = mod.toString();
      System.out.println(mod.toString());
  }

    //Display Hangman Ayush Ranjan and Steven Mai
  void displayHangman(int attempt) {
    System.out.println("\n");
    switch (attempt) {
      case 7:
        System.out.print("=---> ");
      case 6:
        System.out.print(" 0");
      case 5:
        System.out.print("\n/");
      case 4:
        System.out.print("|");
      case 3:
        System.out.print("\\");
      case 2:
        System.out.print("\n/");
      case 1:
        System.out.print(" \\\n");
        break;
    }
    System.out.println("\n");

  }
  
}