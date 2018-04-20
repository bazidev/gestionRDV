<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>gestion des rendez-vous</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/popper.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link type="text/css"  rel="stylesheet" href="css/style.css"/>
</head>
<body>
	<div class="container-fluid ">
		 <div  class="jumbotron jumbotron-fluid">

		    <h1>gestion des rendez-vous medical</h1>      
		    <blockquote><strong> " maintenant vos patients sont proches de vous ...</strong></blockquote>
		  </div>
		  <div style="margin-top:100px!important" class="row  justify-content-md-center">
  			  <div class="col col-lg-5">
    
				<form>
					
					<div class="form-group">
						<label for="exampleInputEmail1">nom d'utulisateur</label> <input
							type="text" class="form-control" id="exampleInputEmail1"
							placeholder="nom d'etulisateur">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">mot de pass</label> <input
							type="password" class="form-control" id="exampleInputPassword1"
							placeholder="mot de pass">
					</div>
					
					<button type="submit" class="btn btn-success">sing up</button>
					<a href="index.jsp" class="btn btn-default" role="button">login</a>
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