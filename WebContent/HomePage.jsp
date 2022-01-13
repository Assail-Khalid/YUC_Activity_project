<!DOCTYPE html>
<html>
    <!--head-->
<head>
    <title>YUC students activities </title>
    <!--Css external sheet link-->
    <link rel="stylesheet" type="text/css" href="homeStyle.css"/>

    <!--this is taken from font awesome library to insert search icon-->
    <link rel="stylesheet" type="text/css" href="all.css"/>
</head>

<!--body-->
<body>
    <!--official yuc logo in the top left of the page-->
    <img class= "logo" src = "yuc_logo-removebg.png" alt = "YUC logo" width="80" height="80">
    <!--this line of code to insert the profile icon-->&nbsp;
    <a href="profile page.html"><img src="profile.png" width="80" height="80"></a> 

    <!--header work-->
    <header>
       

         <a href="HomePage.jsp">Home</a>&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;
         <a href="Annoucement.html">Announcement</a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="About Us.html">About Us</a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <a href="Contact Us.jsp">Contact Us</a>
<hr>
         <!-- Search bar code -->
         <form action="search">
         <div class="searchBar">
                <!--This line of code to create the box of search-->
                <input type="text" name="searched" placeholder="search.." class="search">
				<button type="submit" class="saerchButton">
                <!--this line of code to insert the search icon-->
                <i class="fa fa-search"></i> 
               </button>
         </div>
         </form>       
         <!-- End of search bar code -->
         
    </header>

    <!--yuc activities logo-->
    <div style="display: flex; align-items: center; justify-content: center;">
        <img src = "saf-logo.png" alt = "Yuc students activities logo" width="300" height="200"> 
    </div>
	<br>
    <!--title-->
    <h1><span style="color: orange;"> YUC</span><span style="color: rgb(255, 46, 255);"> STUDENTS</span> <span style="color: rgb(54, 247, 6);">ACTIVITIES</span> </h1> 
	
    <!--introduction paragraph text-->
    <p class="intro"> This is the official website for YUC students activities. On this website, you are going to be able to contact any students in YUC  and anyone in the club. This community is designed to facilitate the communication process between YUC members students and their one belong to YUC. you can see announcements, upload your work and you can communicate and do great things with your clubs! What are you waiting for come and join us!</p>

	<hr>
    <br><br>
    <!---------STUDENT INFO---------->
     <div class="clearfix">
         <div class="box" style="background-color: aliceblue;">
           <h3> My Clubs:</h3>
           <p> 
       			<a href="fun and art.jsp">Fun and Art Club</a>
   		   <br><br>
   		   		<a href="Talent club.jsp">Talent Club</a>
   		   <br>
   				<a style="text-decoration: none; color:blue;"
   				href="My Clubs.html">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;more..</a>
   			</p>
         </div>
        <div class="box" style="background-color: aliceblue;">
           <h3>  Recently added task:</h3>
           <p>
           
           <a style="text-decoration: none; color:blue;"
   				href="My tasks.html">&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;more..</a>
           </p>
        </div>
        <div class="box" style="background-color: aliceblue;">
          <h3>  My Recent Activities:</h3>
         </div>
   </div>
		<br><br>
		 
		<div>
	
		</div>
		
		<div class="clearfix" style="background-color: aliceblue;" >
		<% 
		Cookie cookie = null;
        Cookie[] cookies = null;
        // Get an array of Cookies associated with the this domain
        cookies = request.getCookies();

        if( cookies != null ) {
           out.println("<h2> List of Your History Visits: </h2><br><br><br>");
           
           for (int i = 1; i < cookies.length-1; i++) {
              cookie = cookies[i];
              
              out.print("Club Name: " + cookie.getName( )+" <br/>");
              out.print("Number of visit: " + cookie.getValue( )+" <br/>");
              out.println("<br/>");

           }
		   out.println("<h2>You can notice which one you visit the most!<br/>");
		   out.println("Would you like to join a club?");
		   out.println("<a href='Contact Us.html'>"+"Contact Us!"+"</a>");
           
            
        } 
        else{}
		%>
		</div>

		<br><br><br><br>
    <!---------/STUDENT INFO---------->
	
    <!--sport clubs cards-->
    <div class="image"> <h2>SPORT CLUBS </h2>
    <a href="basketball club.jsp"><img class="image" src="Basketball club.png" alt="basketball club" width="300" height="180"></a> 
    <a href="badminton club.jsp"> <img class="image" src="Badminton club.png" alt="badminton club" width="300" height="180"> </a>
    <a href="pedestrian club.jsp"><img class="image" src="Pedestrian club.png"  alt="pedestrian club" width="300" height="180"> </a>
    </div>

    <!--Art clubs cards-->
    <div class= "image"> <h2>ART CLUBS</h2>
    <a href="fun and art.jsp"><img class="image" src="Art and fun club.png"  alt="fun and art club" width="300" height="180"> </a>
    <a href="Talent club.jsp"><img class="image" src="Talent club.png" alt="Talent club" width="300" height="180"> </a>
    </div>

    <!--English club cards-->
    <div class="image"> <h2>ENGLISH CLUBS</h2>
        <a href="English club.jsp"><img  class="image" src="English club.png"  alt="English club" width="300" height="180"> </a>
        <a href="English express.jsp"><img  class="image" src="English express.png"  alt=" English express" width="300" height="180"> </a>
    </div>
     
		
		<% // check the information is not empty, so if it's empty redirect the user to login page to access the page.
			//e.g: entering the url of this page directly in the browser
		if(session.getAttribute("userName")==null){
				response.sendRedirect("loginpage.html");
			}
		
		//don't let the browser cache information, so that when user logout can't back to the page again with the arrow.
		//(To make login process the only way to see home page after logging out)
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		%>
	
</body>

<footer>
    <script src="footer.js"></script>
</footer>


</html>