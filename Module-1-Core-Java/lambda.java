import java.util.*;
public class LambdaSort {
    public static void main(String[] args) {
        List<String> names = Arrays.asList("Bob", "Alice", "David");
        Collections.sort(names, (a, b) -> a.compareTo(b));
        System.out.println("Sorted Names: " + names);
    }
}
