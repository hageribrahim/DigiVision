package problemsolving;

import java.util.Scanner;

//import javax.sound.sampled.ReverbType;

public class Answer {

	
	public static void main(String[] args) {
		Scanner scan= new Scanner(System.in);  
		System.out.print("Enter a string: ");  
		String input= scan.nextLine();
	   	String result = reverseParentheses(input);
	   	System.out.println(result);
	  
	}

	private static int index = 0;
    static public String reverseParentheses(String input) {
    	
        StringBuilder ans = new StringBuilder();
        while (index < input.length()) {
            if (input.charAt(index) == '(') {
                ++index;
                ans.append(reverseParentheses(input));
            } else if (input.charAt(index) == ')') {
                index++;
                return '('+ans.reverse().toString()+')';
            } else {
                ans.append(input.charAt(index++));
            }
        }
        return ans.toString();
    }
}
