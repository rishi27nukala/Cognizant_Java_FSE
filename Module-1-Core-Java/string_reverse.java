import java.util.Scanner;
public class StringReversal {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter a string: ");
        String s= sc.nextLine();
        StringBuilder reversed = new StringBuilder(s).reverse();
        System.out.println("Reversed: " + reversed);
    }
}
