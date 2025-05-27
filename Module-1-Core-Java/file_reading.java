import java.io.*;

public class FileReading {
    public static void main(String[] args) {
        try {
            BufferedReader reader = new BufferedReader(new FileReader("output.txt"));
            String l;
            while ((l = reader.readLine()) != null) {
                System.out.println(l);
            }
            reader.close();
        } catch (IOException e) {
            System.out.println("File not found.");
        }
    }
}
