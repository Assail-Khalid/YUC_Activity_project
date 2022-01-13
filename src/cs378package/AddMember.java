package cs378package;


import java.io.IOException;
import java.io.PrintWriter; 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddMember")
public class AddMember extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		String name= request.getParameter("Name");
		
		String email= request.getParameter("Email");
		
		String StdId = request.getParameter("Student_id");
		
			out.println("<htm>");
			out.println("<head>"); 
			out.println("<title>Member added</title>"); 
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
			
			out.println("p {");        
			out.println("text-align: center;");
			out.println("background-color:white;");
			out.println("border-radius: 10px;");
			out.println("font-size: 30px; ");
			out.println("margin-left: 10px;");
			out.println("margin-right: 30px;");
			out.println("margin-top: 100px;");
			out.println("}");
		
			out.println("btn {");        
			out.println("width: 30px;");
			out.println("border: 1px solid #00B4CC;");
			out.println("background: #00B4CC;");
			out.println("text-align: center;");
			out.println("color: #fff;");
			out.println("border-radius: 0 5px 5px 0;");
			out.println("cursor: pointer;");
			out.println("font-size: 20px;");
			out.println("}");
		
			out.println("</style>"); 
			        
			out.println("</head>");
			out.print("<body bgcolor=\"#f0e9de\">");
			
			out.print("<h1>");
			out.println("The memeber "+name+" has been added successfully!\n");
			out.print("<p>");
			out.println("<br>");
			out.println("The full information of the registered member");
			out.println("<br>");
			out.println("Name: "+name);
			out.println("<br>");
			out.println("\nID Number: "+StdId);
			out.println("<br>");
			out.println("\nEmail: "+email);
			out.println("<br><br><br><br>");
			out.println("<a href=\"Add member page.html\">");
			out.println("<input class\"btn\" type=\"submit\" Value=\"add member page\" >");
			out.println("</a>");
			out.println("<br><br>");
			out.println("<a href=\"YUC students activities home page.html\">");
			out.println("<input type=\"submit\" clase=\"btn\" Value=\"home page\" >");
			out.println("</a>");
			out.println("<br><br>");
			out.print("</p>");
			out.print("</h1>");
			out.println("</body>");
			out.println("</html>");
			//out.println("The member is successfully added");
			
		}


}
