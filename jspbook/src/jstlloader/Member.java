package jstlloader;

// 예제에서 사용할 데이터 클래스
public class Member
{
    // 이름과 이메일 저장을 위한 멤버 변수 선언
    private String name;
    private String email;
    
    // 생성자에서 인자로 변수 설정
    public Member(String name, String email)
    {
        this.name = name;
        this.email = email;
    }
    
    // 기본 생성자에서는 각 변수의 비어 있는 문자열로 초기화
    public Member()
    {
        this.name = "홍길동";
        this.email = "test@test.net";
    }
    
    public String getName()
    {
        return this.name;
    }
    
    public String getEmail()
    {
        return this.email;
    }
    
    public void setName(String name)
    {
        this.name = name;
    }
    
    public void setEmail(String email)
    {
        this.email = email;
    }
}
