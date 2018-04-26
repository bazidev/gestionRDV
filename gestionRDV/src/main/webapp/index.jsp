<%@page import="com.gestionRDV.beans.Patient"%>
<%@page import="com.gestionRDV.beans.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>gestion des rendez-vous</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link type="text/css"  rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<%
	if(request.getSession().getAttribute("user") != null)
	{
		request.getSession().setAttribute("r", true);
		response.sendRedirect("login");
	}
	
	%>
	<div class="container-fluid ">
		 <div class="jumbotron jumbotron-fluid">
		    <h1>gestion des rendez-vous medical</h1>      
		    <blockquote><strong> " maintenant vos patients sont proches de vous ...</strong></blockquote>
		  </div>
		  <div style="margin-top:100px!important" class="row  justify-content-md-center">
  			  <div class="col col-lg-5">
    			<%
					if(request.getAttribute("msg") != null)
					{
						%>
						<div class="alert alert-danger" role="alert">
							 <%=request.getAttribute("msg")  %>
						</div>
						<%
					}
				%>
				<br>
				<form action="login" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">nom d'utulisateur</label> <input
							type="text" class="form-control" id="username" name="username"
							placeholder="nom d'etulisateur" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">mot de pass</label> <input
							type="password" class="form-control" id="password" name="password"
							placeholder="mot de pass" required>
					</div>
					  <div class="form-group">
					    <label for="account">type de compte</label>
					    <select class="form-control" id="account" name="account">
					      <option >admin</option>
					      <option>medecin</option>
					      <option >patient</option>
					    </select>
					  </div>
					<button type="submit" class="btn btn-success">log in</button>
					<a href="singup.jsp" class="btn btn-default" role="button">sing up</a>
				</form>
				
			</div>
			</div>
	
  
	</div>
	
	<script>
		function moveToSingUp()
		{
		     location.href = "singup.jsp";
		} 
	</script>
</body>
</html>