import java.util.*;
record Person(String name, int age) {}

public class Main {
    public static void main(String[] args) {
        List<Person> p = new ArrayList<>();
        p.add(new Person("Alice", 25));
        p.add(new Person("Bob", 30));
        p.add(new Person("Charlie", 17));

        p.stream().filter(p -> p.age() >= 18).forEach(System.out::println);
    }
}
