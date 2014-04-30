package ch04;

public class Calc
{
    private int result;
    
    public Calc(int num1, int num2, String op)
    {
        if (op.equals("+")) {
            result = num1 + num2;
        } else if (op.equals("-")) {
            result = num1 - num2;
        } else if (op.equals("*")) {
            result = num1 * num2;
        } else if (op.equals("/")) {
            result = num1 / num2;
        }
    }
    
    public int getResult()
    {
        return result;
    }
}


