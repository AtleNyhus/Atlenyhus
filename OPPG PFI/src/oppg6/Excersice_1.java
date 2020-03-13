package oppg6;

public class Excersice_1 {
    public final static int MAX_NUMBERS = 100;
    public int[] numbers;

    public Excersice_1() {
    }

    public Excersice_1(int[] numbers) {
        this.numbers = numbers;
    }

    public void fillArray() {
        numbers = new int[MAX_NUMBERS];
        for (int i = 0; i < numbers.length; i++) {
            numbers[i] = (int) (1000 * Math.random());
        }
    }

    public int getNumber(int i) {
     int a = 0;
        try {
             a = this.numbers[i];

        } catch (ArrayIndexOutOfBoundsException ex) {
            System.out.println("the number was to big");
        }
        return a;
    }


}
