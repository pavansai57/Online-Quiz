<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>


<!DOCTYPE html>

<% 
if(session.getAttribute("userid")==null)
	response.sendRedirect("http://localhost:8080/myproject2/login.html");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/myproject","root",""); 
Statement st1= con1.createStatement(); 
String userid=(String)session.getAttribute("userid");
ResultSet rs=st1.executeQuery("select * from usrmarks where user_id='"+userid+"' ");
if(rs.next())
{
  response.sendRedirect("http://localhost:8080/myproject2/login.html");	
}
else{
	%>
<html>
<input type="hidden" id="refreshed" value="no">

<script type="text/javascript">
	onload=function(){
	var e=document.getElementById("refreshed");
	if(e.value=="no")e.value="yes";
	else{e.value="no";location.reload();}
	}
</script>

<script type="text/javascript">
if(localStorage.getItem("time"))
{
    var total_seconds = localStorage.getItem("time");
}
else
{
	var total_seconds = 300;
}
var c_minutes = parseInt(total_seconds/60);
var c_seconds = parseInt(total_seconds%60);

function CheckTime(){
document.getElementById("quiz-time-left").innerHTML
= 'Time Left: ' + c_minutes + ' minutes ' + c_seconds + ' seconds ' ;

if(total_seconds <=0){
	window.localStorage.clear();
setTimeout('document.form1.submit()',1);
} else {
total_seconds = total_seconds -1;
localStorage.setItem("time",total_seconds);
c_minutes = parseInt(total_seconds/60);
c_seconds = parseInt(total_seconds%60);

setTimeout("CheckTime()",1000);
}}
setTimeout("CheckTime()",1000);
</script>

<style type="text/css">

body{
	background-color:#F0F8FF;
}

</style>


<body >
<center>
<h1>QUIZ1</h1>
<div style="font-weight: bold" id="quiz-time-left"></div>
</center>

<form name="form1" action="test1" method="post">
            
			
	<h2> 1.	Which instrument is used to measure altitudes in aircrafts ? </h2>
			<br>
			<input type="radio" name="a" value="a1">Audiometer<br>
			<input type="radio" name="a" value="a2">Ammeter<br>
			<input type="radio" name="a" value="a3">Altimeter<br>
			<input type="radio" name="a" value="a4">Anemometer<br>
			
		<hr>	<h2>2.Which instrument is used to measure depth of ocean ? </h2>
			<br>
			<input type="radio" name="b" value="a1">Galvanometer<br>
			<input type="radio" name="b" value="a2">Fluxmeter <br>
			<input type="radio" name="b" value="a3">Endoscope<br>
			<input type="radio" name="b" value="a4">Fathometer
			
		<hr><h2>	3. Name of the instrument to measure atomspheric pressure ?</h2>
			<br>
			<input type="radio" name="c" value="a1">Barometer <br>
			<input type="radio" name="c" value="a2">Barograph<br>
			<input type="radio" name="c" value="a3">Bolometer <br>
			<input type="radio" name="c" value="a4">Callipers<br>
			
	<hr>	<h2>	4.	Which instrument is used to measure the power of electric circuit ?</h2>
			<br>
			
			<input type="radio" name="d" value="a1">Voltmeter <br>
			<input type="radio" name="d" value="a2">Wattmeter<br>
			<input type="radio" name="d" value="a3">Wavemeter <br>
			<input type="radio" name="d" value="a4">Viscometer<br>
			
	<hr>	<h2>	5.	Which instrument is used in submarine to see the objects above sea level ? </h2>
			<br>
			<input type="radio" name="e" value="a1">Pykometer<br>
			<input type="radio" name="e" value="a2">Polygraph<br>
			<input type="radio" name="e" value="a3">Photometer <br>
			<input type="radio" name="e" value="a4">Periscope<br>
			
	<hr>	<h2>	6.	Which instrument is used to measure curvature of spherical objects ? </h2>
			<br>
			<input type="radio" name="f" value="a1">Spectroscope<br>
			<input type="radio" name="f" value="a2">Spherometer<br>
			<input type="radio" name="f" value="a3">Spectrometer<br>
			<input type="radio" name="f" value="a4">Sextant<br>
			
	<hr>	<h2>	7.	Which instrument is used to record physical happenings at a distant place ? </h2>
			<br>
			<input type="radio" name="g" value="a1">Thermostat <br>
			<input type="radio" name="g" value="a2">Tonometer <br>
			<input type="radio" name="g" value="a3"> Telemeter<br>
			<input type="radio" name="g" value="a4"> Transponder  <br>
			
	<hr>	<h2>	8. Which instrument is used to measure the scattering of light by particles suspended in a liquid ?</h2>
			<br>
			<input type="radio" name="h" value="a1">Nephetometer <br>
			<input type="radio" name="h" value="a2">Ohmmeter<br>
			<input type="radio" name="h" value="a3">Ondometer<br>
			<input type="radio" name="h" value="a4">Pyrometer<br>
			
	<hr>		<h2>9.	Which instrument is used to determine the intensity of colours ? </h2>
			<br>
			<input type="radio" name="i" value="a1">Cathetometer <br>
			<input type="radio" name="i" value="a2">Chronometer<br>
			<input type="radio" name="i" value="a3">Colorimeter<br>
			<input type="radio" name="i" value="a4">Commutator<br>
			
	<hr>	<h2>	10. Which instrument is used to measure changes in volume of substances ?</h2>
			<br>
			<input type="radio" name="j" value="a1">Dyanamo <br>
			<input type="radio" name="j" value="a2">Dilatometer <br>
			<input type="radio" name="j" value="a3">Cyclotron<br>
			<input type="radio" name="j" value="a4">Electroscope<br>
	<hr>
		<center>
		<input type="submit" value="submit" name="sub">
		</center>
    </form>
</body>
<%}%>













</html>