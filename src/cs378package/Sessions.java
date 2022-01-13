package cs378package;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Sessions extends HttpServlet{

	private static final long serialVersionUID = 1L;

	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	}

	//RequiredLogin method is used with private pages(that the user can't see it until login is done) in the website  
	protected void RueqiredLogin(HttpServletRequest request,HttpServletResponse response, String name, String password) throws IOException
	{
		//check if the entered information are the same as in the method 
		//note: these are temporary information later will be replaced with the database
		if(name.equals("Reham") && password.equals("3910360")) {
			
			//create an object session to use session methods 
			HttpSession session = request.getSession();
			
			//set the user name (derived from loginpage.html) as the received name from the method
			session.setAttribute("userName", name);
			
			//set the password(derived from loginpage.html) as the received password from the method
			session.setAttribute("password", password);
			
			//the the information is valid so redirect the user to the home page
			response.sendRedirect("HomePage.jsp");
		}
		
		//if the information is not valid the user will be redirected to the login page to login again. 
		else
		{
			response.sendRedirect("loginpage.html");
		}
	}
	
	//Logout is to end the session and let user logout from the website after clicking in the keyword "Logout" in the footer
	protected void Logout(HttpServletRequest request,HttpServletResponse response, String name) {
		
		//create session object
		HttpSession session = request.getSession();
		
		//remove the name to end the session
		session.removeAttribute(name);
		
		//let the session not valid anymore 
		session.invalidate();
	}
}