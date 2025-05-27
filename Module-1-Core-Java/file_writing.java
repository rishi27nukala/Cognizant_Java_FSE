import java.io.*;
import java.util.*;

public class FileWriting {
    public static void main(String[] args) {
        try {
            Scanner sc = new Scanner(System.in);
            System.out.print("Enter a string to write to file: ");
            String data = sc.nextLine();
            FileWriter w = new FileWriter("output.txt");
            w.write(data);
            w.close();
            System.out.println("Data has been written to output.txt");
        } 
        catch (IOException e) {
            System.out.println("An error occurred.");
        }
    }
}
