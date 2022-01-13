package cs378package;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginPage")
public class LoginPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	@Override 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get information to do the login process
		String  name = request.getParameter("Name").trim();
		String password = request.getParameter("Password").trim();
		
		//create an object from class sessions
		Sessions session = new Sessions(); 
		
		//method from class Sessions that do the login process for required pages
		session.RueqiredLogin(request, response, name, password);
		
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}
    
}