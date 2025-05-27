public class PatternSwitch {
    public static void main(String[] args) {
        message("Hello");
        message(123);
        message(45.67);
    }

    public static void message(Object obj) {
        switch (obj) {
            case Integer i -> System.out.println("Integer: " + i);
            case String s -> System.out.println("String: " + s);
            case Double d -> System.out.println("Double: " + d);
            default -> System.out.println("Unknown type");
        }
    }
}
