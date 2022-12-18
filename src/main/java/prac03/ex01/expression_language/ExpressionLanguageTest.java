package prac03.ex01.expression_language;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/el.test")
public class ExpressionLanguageTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ExpressionLanguageTest() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("id", "hong");
		HttpSession session = request.getSession();
		session.setAttribute("name", "홍길동");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/prac03/expression_language.jsp?age=20");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
