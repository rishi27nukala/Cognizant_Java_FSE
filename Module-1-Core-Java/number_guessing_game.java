import java.util.Random;
import java.util.Scanner;

public class GuessingGame {
    public static void main(String[] args) {
        Random rand = new Random();
        Scanner sc = new Scanner(System.in);
        int numberToGuess = rand.nextInt(100);
        int guess;
        do {
            System.out.print("Guess the number (1 to 100): ");
            guess = sc.nextInt();
            if(guess > numberToGuess)
                System.out.println("Too high!");
            else if(guess < numberToGuess)
                System.out.println("Too low!");
            else
                System.out.println("Correct! You win.");
        } while(guess != numberToGuess);
    }
}
