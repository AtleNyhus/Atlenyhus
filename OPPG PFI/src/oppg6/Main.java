package oppg6;

import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int[] testArray = new int[Excersice_1.MAX_NUMBERS];
        Scanner input = new Scanner(System.in);
        Excersice_1 test = new Excersice_1(testArray);
        System.out.println("Insert the integer you want to access");

        int access = input.nextInt();
        test.fillArray();

        //for (int i = 0; i < testArray.length; i++) {
        //    System.out.println("pos: " + i + " = "+ test.numbers[i]);
        //}
        int a = test.getNumber(access);

        try {
            System.out.println("this is the number at position " + access + ": " + a);
        } catch (Exception ex) {
            System.out.println("the number was to big");
        }
    }
}
