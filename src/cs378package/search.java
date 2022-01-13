package cs378package;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/search")
public class search extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out =response.getWriter();
		String searchedPage = request.getParameter("searched");
		
		if(searchedPage.equalsIgnoreCase("about us"))
			response.sendRedirect("About Us.html");
		
		else if(searchedPage.equalsIgnoreCase("annoucement"))
			response.sendRedirect("Annoucement.html");
		
		else if(searchedPage.equalsIgnoreCase("badminton club") ||searchedPage.equalsIgnoreCase("badminton") )
			response.sendRedirect("badminton club.html");
		
		else
		{
				
		out.println("<htm>");
		out.println("<head>"); 
		out.println("<title>Page Not Found</title>"); 
		out.println("<style>"); 
		out.println("h1 {");        
		out.println("padding: 40px 20px; ");
		out.println("background-color:#C2E5D3;");
		out.println("border-radius: 10px;");
		out.println("margin-left: 50px;");
		out.println("margin-right: 50px;");
		out.println("margin-top: 100px;");
		out.println("text-align: center;");
		out.println("font-family: Copperplate, Papyrus, fantasy;");
		out.println("}");
		out.println("</style>"); 
		out.print("<body bgcolor=\"#f0e9de\">");    
		out.println("<h1> Page not found ");
		out.println("<br>You Will Be Redirected To Home Page in 5 Seconds</h1>");
		response.setHeader("Refresh", "5; URL=HomePage.jsp");
		out.println("</body>");
		out.println("</html>");
		
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			
	}

}