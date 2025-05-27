import java.util.*;
public class StudentList {
    public static void main(String[] args) {
        ArrayList<String> students = new ArrayList<>();
        Scanner sc = new Scanner(System.in);
        String name;
      
        System.out.println("Enter student names (type 'stop' to finish):");
        while (true) {
            name = sc.next();
            if (name.equals("stop")) break;
            students.add(name);
        }

        System.out.println("Student Names:");
        for (String s : students) {
            System.out.println(s);
        }
    }
}
