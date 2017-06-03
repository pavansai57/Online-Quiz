<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
if(session.getAttribute("userid")==null)
	response.Redirect("http://localhost/myproject1/login.html");
%>
<!DOCTYPE html>

<html>


<body>
<center>
<h1>QUIZ</h1>
</center>

<form name="form1" action="test1" method="post">
            <font size="10">
			
	<h2> 1.	How many characters are allowed to create database name? </h2>
			<br>
			<input type="radio" name="a" value="a1">55<br>
			<input type="radio" name="a" value="a2">72<br>
			<input type="radio" name="a" value="a3">64<br>
			<input type="radio" name="a" value="a4">40<br>
			
		<hr>	<h2>2.	 MySQL Access security is controlled through? </h2>
			<br>
			<input type="radio" name="b" value="a1">The ID that the user logged into the server through, and priveliges set up for that account<br>
			<input type="radio" name="b" value="a2">MySQL login accounts, and priveliges set for each account <br>
			<input type="radio" name="b" value="a3">The normal login security is sufficient for MySQL, and it does not have any extra controls of        its own.<br>
			<input type="radio" name="b" value="a4">A table of valid IP addresses, and priveliges set up for each IP address
			
		<hr><h2>	3.   Choose another way to write x ? a = b : a = c</h2>
			<br>
			<input type="radio" name="c" value="a1">if ('x') { a = b; } else { a = c; } <br>
			<input type="radio" name="c" value="a2">if (x) { a = c; } else { a = b; }<br>
			<input type="radio" name="c" value="a3">x : a = c ? a = b <br>
			<input type="radio" name="c" value="a4">All of these are bogus.<br>
			
	<hr>	<h2>	4.	What HTML attribute allows a Java applet explicit permission to access JavaScript objects and functions?</h2>
			<br>
			
			<input type="radio" name="d" value="a1">MAYSCRIPT <br>
			<input type="radio" name="d" value="a2">CODE<br>
			<input type="radio" name="d" value="a3">PARAM <br>
			<input type="radio" name="d" value="a4">CODEBASE<br>
			
	<hr>	<h2>	5.	Which cookies.txt filesize is too large? </h2>
			<br>
			<input type="radio" name="e" value="a1">1k<br>
			<input type="radio" name="e" value="a2">3k<br>
			<input type="radio" name="e" value="a3">5k <br>
			<input type="radio" name="e" value="a4">There is no theoretical limit.<br>
			
	<hr>	<h2>	6.	Which property returns the number of arguments expected by a function? </h2>
			<br>
			<input type="radio" name="f" value="a1">arguments.length <br>
			<input type="radio" name="f" value="a2">Function.caller<br>
			<input type="radio" name="f" value="a3">Function.display<br>
			<input type="radio" name="f" value="a4">Function.arity <br>
			
	<hr>	<h2>	7.	Which is not a built-in function of java-script? </h2>
			<br>
			<input type="radio" name="g" value="a1">parseInt() <br>
			<input type="radio" name="g" value="a2">exec() <br>
			<input type="radio" name="g" value="a3">eval() <br>
			<input type="radio" name="g" value="a4">parseFloat()   <br>
			
	<hr>	<h2>	8.  Vacuum tube based electronic computers are...?</h2>
			<br>
			<input type="radio" name="h" value="a1"> First generation<br>
			<input type="radio" name="h" value="a2">Second generation<br>
			<input type="radio" name="h" value="a3">Hoover generation<br>
			<input type="radio" name="h" value="a4">none<br>
			
	<hr>		<h2>9.	Which is a PCI bus speed? </h2>
			<br>
			<input type="radio" name="i" value="a1">22Mhz <br>
			<input type="radio" name="i" value="a2">33Mhz<br>
			<input type="radio" name="i" value="a3">44Mhz<br>
			<input type="radio" name="i" value="a4">55Mhz<br>
			
	<hr>	<h2>	10.  IRQ 6 is commonly assigned to:</h2>
			<br>
			<input type="radio" name="j" value="a1">sound card <br>
			<input type="radio" name="j" value="a2">Com1 <br>
			<input type="radio" name="j" value="a3">floppy drive controller<br>
			<input type="radio" name="j" value="a4">LPT1<br>
			



</body>














</html>