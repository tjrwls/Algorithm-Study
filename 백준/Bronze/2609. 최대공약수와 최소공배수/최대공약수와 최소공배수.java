import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        int a, b, i = 1, min = 0, max = 0;
        Scanner sc = new Scanner(System.in);
        a = sc.nextInt();
        b = sc.nextInt();


        while (true) {

            if (i * a % b == 0 && min == 0) {
                min = i * a;
            }
            if (a % i == 0 && b % i == 0) {
                max = i;
            }

            if(min != 0 && (i > a || i > b)) {
                break;
            }
            i++;
        }
        System.out.println(max);
        System.out.println(min);
    }
}