<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
	<title>The first JSP assignment</title>
</head>
<% 
	Date todaysDate = new Date();
	SimpleDateFormat simpleClock = new SimpleDateFormat("k");
	String clock = simpleClock.format(todaysDate);
	%>
<body text="#972bc2">
	<h1><i>
	<%
	if(Integer.parseInt(clock) < 12){
		out.println("Please, have a breakfast!");
	}else if(Integer.parseInt(clock) >= 12 && Integer.parseInt(clock) <= 16){
		out.println("Please, have a lunch!");
	}else if(Integer.parseInt(clock) > 16){
		out.println("Please, have a dinner/supper!");
	}
	%>
	</i></h1>
</body>
</html>
