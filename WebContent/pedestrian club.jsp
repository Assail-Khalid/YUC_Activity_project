<!DOCTYPE html>
<html>
    <!--head-->
<head>
    <title>Pedestrian Club</title>
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
         <%@ include file="/WEB-INF/includes/countPedestrian.jsp" %>
    
          <!-- ------------------------------for the club--------------------------------------------->
          <section>
            <div class="announcment-section">
              <div class="container">
                <div class="content">
                  <div>
                  <h2>Pedestrian Club</h2>
                  <p>
                    Yanbu infantry team
                                        <br/>
                  <p> Our goal is to be a healthy sports society
                  </p>
                </div>
                </div>
      
                <img
                  class="logo"
                  src="Pedestrian-logo.PNG"
                  alt="Pedestrian logo"
                  width="20%"
                  height="auto"
                />
              </div>
            </div>
                
                    <!---------Leader's bar---------->
            <div class = "leader_bar">
              <a id="Element1"href="Add annoucement page.html">+ Add new announcement</a>
               <a id="Element2"href="Add member page.html">+ Add new member</a>
              <a id="club_members"href="Club members.html">Club's members</a>
           </div>

            <!---------End of Leader's bar---------->
      
            <h2>Activity announcements</h2>
            <hr />
            <div class="announcment-section">
              <img
                class="image image-announced"
                src="Pedestrian-invite.PNG"
                alt="Pedestrian invitation - announcement Activity"
              />
            </div>
            <div class="announcment-section">
              <img
                class="image image-announced"
                src="Pedestrian-invite.PNG"
                alt="Pedestrian invitation - announcement Activity"
              />
            </div>
            <div class="announcment-section">
              <img
                class="image image-announced"
                src="Pedestrian-invite.PNG"
                alt="Pedestrianinvitation - announcement Activity"
              />
            </div>
          </section>
</body>

<footer>
  <script src="footer.js"></script>
</footer>

</html>