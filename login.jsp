<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid=request.getParameter("user");  
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject","root",""); 
Statement st1= con.createStatement(); 
ResultSet rs=st1.executeQuery("select * from users where user_id='"+userid+"' ");
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from usrmarks where user_id='"+userid+"'");
if(rs2.next())
{
	session.invalidate();
	%>
	<p style="color:red" align="center">User has taken the test</p>
<jsp:include page="login.html"></jsp:include>
<%}
else
{
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{
session.setAttribute("userid",userid);
response.sendRedirect("http://localhost:8080/myproject2/quiz1.jsp");
out.println("welcome"+userid); 
}
else 
{ %>
<p style="color:red" align="center">wrong password<p>
<jsp:include page="login.html"></jsp:include>
<%
} 
}
else 
{ %>
<p style="color:red" align="center">wrong username or password<p>
<jsp:include page="login.html"></jsp:include>
<%
}
} 
%>

