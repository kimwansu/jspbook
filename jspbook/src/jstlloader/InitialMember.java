package jstlloader;

import javax.servlet.*;
import javax.servlet.annotation.WebListener;

import java.util.*;

// ServeltContextListener 인터페이스를 구현하는 클래스 생성
@WebListener
public class InitialMember implements ServletContextListener
{
    // 애플리케이션이 처음으로 실행될때 호출되는 메서드
    @Override
    public void contextInitialized(ServletContextEvent sce)
    {
        ServletContext context = sce.getServletContext();
        // 애플리케이션에서 공유할 예제 데이터 저장을 위한 ArrayList 생성
        // <Member>는 ArrayList에 들어갈 객체 타입으로 소스와 같이 명시적으로 선언해야 함
        ArrayList<Member> datas = new ArrayList<Member>();
        
        // 예제 데이터 8개 생성
        for (int i = 0; i < 8; i++) {
            Member data = new Member("테스트" + i, "test" + i + "@test.net");
            datas.add(data);
        }
        
        // 이메일이 없는 데이터 추가
        datas.add(new Member("테스트9", null));
        datas.add(new Member("테스트10", null));
        
        // context(==application scope)에 datas와 Member 객체 저장
        context.setAttribute("members", datas);
        context.setAttribute("member", new Member());
    }
    
    // 필수 구현 메서드이지만 이 예제에서 할 일은 없음
    @Override
    public void contextDestroyed(ServletContextEvent sce)
    {
        // TODO Auto-generated method stub
        
    }
}
