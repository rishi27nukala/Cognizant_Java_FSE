import java.util.*;
public class StudentMap {
    public static void main(String[] args) {
        HashMap<Integer, String> hm = new HashMap<>();
        Scanner sc = new Scanner(System.in);
        hm.put(101, "Alice");
        hm.put(102, "Bob");
        hm.put(103, "Charlie");

        System.out.print("Enter student ID : ");
        int id = sc.nextInt();

        if (studentMap.containsKey(id)) {
            System.out.println("Student Name: " + studentMap.get(id));
        } else {
            System.out.println("Student ID not found.");
        }
    }
}
