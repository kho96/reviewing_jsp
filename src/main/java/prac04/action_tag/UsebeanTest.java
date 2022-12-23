package prac04.action_tag;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/prac04/usebean.test")
public class UsebeanTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UsebeanTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("컨트롤러 요청...");
		// 이런식으로 요청의 흐름이 컨트롤러(서블릿)을 타고 상황에 따라 Model(DB)을 거쳐 View(jsp)를 보여주는 개발형태를 모델 2 방식이라고 한다.
		RequestDispatcher dispatcher = request.getRequestDispatcher("/prac04/usebean_test_run.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
