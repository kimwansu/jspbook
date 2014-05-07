package ch03;

public class CalcBean
{
    // 멤버 변수 설정
    private int num1;
    private int num2;
    private String operator = "";
    private int result;
    
    // 연산자별 연산을 수행하는 메소드
    public void calculate()
    {
        if (operator.equals("+")) {
            result = num1 + num2;
        } else if (operator.equals("-")) {
            result = num1 - num2;
        } else if (operator.equals("*")) {
            result = num1 * num2;
        } else if (operator.equals("/")) {
            result = num1 / num2;
        }
    }
    
    // setter 메소드
    public void setNum1(int num1)
    {
        this.num1 = num1;
    }
    
    public void setNum2(int num2)
    {
        this.num2 = num2;
    }
    
    public void setOperator(String operator)
    {
        this.operator = operator;
    }
    
    // getter 메소드
    public int getResult()
    {
        return this.result;
    }
}
