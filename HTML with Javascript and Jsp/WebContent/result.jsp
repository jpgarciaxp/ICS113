<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="bootstrap.min.css">
	<link rel="stylesheet" href="bootstrap-theme.min.css">
<title>Ticket</title>
<style>
	body{
		background-color:#7f8c8d;
		}
	#head{
		margin-top:40px;
		background-color:#ecf0f1;
		border-radius:25px;
		}
	#body{
		background-color:#ecf0f1;
		border-radius:25px;
		margin-top:25px;
		padding-bottom:20px;
		}
</style>
</head>
<body>
	<form action="logged.html" method="post">
	<div class="container">	
			<div class="container" id="head">
				<center><h2>GB Express</h2></center>
				<center><p><%= request.getParameter("schedule") %></p></center>
				<center><p>Status: CONFIRMED</p></center><hr>
			</div>
			
			
			<center>
			<div class="container" id="body">
			<div class="container col-md-4">
				<h3>Trip Details</h3>
				<p><%= request.getParameter("from")%> to 
				<%= request.getParameter("to")%></p>
				<p>Schedule: <%= request.getParameter("schedule") %></p>
				<p>Departure Time: <%= request.getParameter("dept") %></p>
				<p>Trip No: <%= "" + (int)(Math.random() * 9) + (int)(Math.random() * 9) +
				(int)(Math.random() * 9) + (int)(Math.random() * 9) + (int)(Math.random() * 9)%></p>
			</div>	
				
			<div class="container col-md-4">	
				<h3>Guest Details</h3>
				<p>Name: <%= request.getParameter("fname") + " " + request.getParameter("mi")
				+ " " + request.getParameter("lname") 
				%></p>
				<p>Address: <%= request.getParameter("address") %></p>
				<p>Age: <%=request.getParameter("age") %></p>	
				<br><br><br><br><input type="submit" class="btn btn-success" value="Book Again!">
			</div>	
			
			<div class="container col-md-3">
				<h3>Payment Details</h3>		
				<p>Manila(Cubao)-Naga(Bicol) (Vice-Versa) : 850php per person</p>
				<p>Manila(Cubao)-Baguio(Vice-Versa) : 450 php per person</p>
				<p>Manila(Cubao)-Batangas(Vice- Versa):150 php per person</p>
			</div>	
			</div>
			</center>
			
	</div>
	</form>
	<script src="jquery-2.1.3.min.js"></script>
	<script src="bootstrap.min.js"></script>
	<script src="bootstrap.js"></script>
</body>
</html>