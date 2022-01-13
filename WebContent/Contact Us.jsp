<!DOCTYPE html>
<html>
    <head>
        <title>Contact Us</title>
        <!--Css external sheet link-->
        <link rel="stylesheet" type="text/css" href="homeStyle.css"/>
        <!--this is taken from font awesome library to insert search icon-->
        <link rel="stylesheet" type="text/css" href="all.css"/>
    </head>
    <body>
            <!--official yuc logo in the top left of the page-->
   <img class= "logo" src = "yuc_logo-removebg.png" alt = "YUC logo" width="80" height="80">
    <!--this line of code to insert the profile icon-->&nbsp;
    <a href="profile page.html"><img src="profile.png" width="80" height="80"></a> 
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

          <img id= "ContactUsPic" src ="Contact Us.png">
          <h2 class="introText">YUC Can Contact Us Through The Following Email Link:</h2>
          <a href = "mailto: saf@rcyci.edu.sa">
            <br>
            <div id="mail">saf@rcyci.edu.sa</div>
        </a>
        <br><br>
        <h2 class="introText"> Clubs leaders contacts: </h2>
         <%@ include file="/WEB-INF/includes/DataBase.jsp" %>
        <footer>
          <script src="footer.js"></script>
      </footer>
      
    </body>
</html>