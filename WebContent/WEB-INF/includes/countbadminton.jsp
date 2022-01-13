
<div>
<% 
          Cookie[] cookieArray = request.getCookies();
          // Default value
          int Badminton_club = 0;
         // Check for cookies
          if (cookieArray != null)
           {
            for (int i =0; i< cookieArray.length; i++)
          {
             Cookie c = cookieArray[i];
             // Check for the count cookie
             if (c.getName().equals("Badminton_club"))
           {
             // Parse cookie value and assign to count
             try
             {
               Integer num = new Integer(c.getValue());
               Badminton_club = num.intValue();
             }
            catch (NumberFormatException nfe) {}

            }

	        }
         }
          Badminton_club++;
         // Increment counter

         // Send updated cookie
          response.addCookie(new Cookie ("Badminton_club", String.valueOf(Badminton_club)));

         // Output message
         if (Badminton_club==0){}
         else{
          out.println("<h2 class='centered'> You Have Visited this page  " +Badminton_club+" times"+"</h2>");

         out.println("<h2 class='centered'>Would you like to join a club? ");
         out.println("<a href='Contact Us.html'>"
           +"  Contact Us!"+"</a></h2>");
          }

%>
</div>

  