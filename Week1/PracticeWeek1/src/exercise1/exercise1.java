package exercise1;
import java.util.Scanner;
public class exercise1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int i=1*2*3*4*5;
		Scanner in = new Scanner(System.in);
		int s = in.nextInt();
		int factorial = 1;
		//System.out.print(i);
		for(int a = 1 ;a <= s;a++)			
		{			
			factorial = factorial * a;			
		}
		System.out.println(factorial);
	}

}
