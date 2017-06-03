import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Extend HttpServlet class
public class test1 extends HttpServlet {
 
  private String message;

  public void init() throws ServletException
  {
      // Do required initialization
  }
  
  public void doGet(HttpServletRequest request, HttpServletResponse response)
throws IOException{
	response.setContentType("text/html");

      // Actual logic goes here.
    
}

  public void doPost(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
  {
	
      // Set response content type
      response.setContentType("text/html");

      // Actual logic goes here.
      PrintWriter out = response.getWriter();
	  HttpSession session=request.getSession();
	  try{
		  if((String)session.getAttribute("userid")==null)
		  response.sendRedirect("http://localhost:8080/myproject2/login.html");
	  }
	  catch(Exception e)
	  {
		  response.sendRedirect("http://localhost:8080/myproject2/login.html");
	  }
	  String userid=(String)session.getAttribute("userid");
	  
	  
	  out.println("<html>");
	  out.println("<body>");
      out.println("<center>");
	  out.println("<h1>"+"Your Marks"+"</h1>");
	  out.println("<h2>User Name:"+userid+"</h2>");
	  
	int count=0;
	
	String ans1="a3";
    String ans2="a4";
    String ans3="a1";
    String ans4="a2";
    String ans5="a4";
    String ans6="a2";
    String ans7="a3";
    String ans8="a1";
    String ans9="a3";
    String ans10="a2";
	  
	if(session.getAttribute("userid")==null)
        {
            response.sendRedirect("http://localhost:8080/myproject2/login.html");
        }
	else
	{
        try
        {
			if(request.getParameter("a")!=null)
				if(request.getParameter("a").equals(ans1))           
					count=count+5;
			
			if(request.getParameter("b")!=null)
				if(request.getParameter("b").equals(ans2))
					count=count+5;
        
            if(request.getParameter("c")!=null)     
				if(request.getParameter("c").equals(ans3))
					count=count+5;
           
		    if(request.getParameter("d")!=null)
				if(request.getParameter("d").equals(ans4))  
					count=count+5;
     
			if(request.getParameter("e")!=null)
				if(request.getParameter("e").equals(ans5))
					count=count+5;
           
            if(request.getParameter("f")!=null)
				if(request.getParameter("f").equals(ans6))
					count=count+5;
            
            if(request.getParameter("g")!=null)
				if(request.getParameter("g").equals(ans7))
					count=count+5;
				
			if(request.getParameter("h")!=null)
				if(request.getParameter("h").equals(ans8))
					count=count+5;
				
            if(request.getParameter("i")!=null)
				if(request.getParameter("i").equals(ans9))	
					count=count+5;
			if(request.getParameter("j")!=null)	
				if(request.getParameter("j").equals(ans10))
					count=count+5;
        
		out.println("<h2>Marks=    "+count+"<h2>");
		out.println("</center>");
		out.println("</body>");
		out.println("</html>");
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject","root",""); 
		Statement st1= con.createStatement();
		String s="INSERT INTO usrmarks (user_id,marks) VALUES ('"+userid+"',"+count+")";
		try{
		st1.executeUpdate(s);
		session.invalidate();
		}
		catch(Exception e)
		{
			out.println(e+"abc");
		}
		
		
		}
        catch(Exception e)
        {
			out.println(e+"def");
        }
	} 
  }
  
  public void destroy()
  {
      // do nothing.
  }
}