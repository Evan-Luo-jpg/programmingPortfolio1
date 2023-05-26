import java.io.*;
import java.util.*;

public class Cypher {
    static String converter(String valIn){
      String valOut = "";
        int index;
        char qwertarray[] = {'q','w','e','r','t','y','u','i','o','p','a','s','d','f','g','h','j','k','l','z','x','c','v','b','n','m'};
        char abcdearray[] = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
        for(int i = 0; i < valIn.length(); i++){
            index = new String(qwertarray).indexOf(valIn.charAt(i));
            valOut = valOut + abcdearray[index];
        }

        return valOut;
    }
    public static void main(String[] args){
        try {
            BufferedReader reader = new BufferedReader(new FileReader("Input.txt"));
            BufferedWriter writer = new BufferedWriter(new FileWriter("Output.txt"));
            String line = reader.readLine();
            while(line != null){
                String newword = converter(line);//
                writer.write(newword);
                //next line
                writer.write('\n');
                //read next line
                line = reader.readLine();
            }   

            reader.close();
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
            // TODO: handle exception
        }
    }
}
