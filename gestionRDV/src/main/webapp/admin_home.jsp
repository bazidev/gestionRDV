<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.gestionRDV.beans.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>gestion des rendez-vous</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/style.css" />

<script type="text/javascript" src="js/scripts.js"> </script>
</head>
<body>
	<%
		Admin user = (Admin)request.getAttribute("user");
	%>
	<div class="container-fluid ">
		<div class="jumbotron jumbotron-fluid">

			<img id="profile_picture" src="images/admin.png" /><br>
			<div><a href="logout" class="btn btn-danger btn-lg active" role="button" aria-pressed="true">deconnecter</a>
		</div>
			</div>

		<nav class="nav-justified">
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<a class="nav-item nav-link active" id="nav-home-tab"
				data-toggle="tab" href="#nav-home" role="tab"
				aria-controls="nav-home" aria-selected="true">les rendez-vous</a>
				
				 <a
				class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
				href="#nav-profile" role="tab" aria-controls="nav-profile"
				aria-selected="false">les medecins</a>
				
				 <a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">les patients</a>
		</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-6">
								<a style ="height:40px;" href="#" class="btn  btn-info add_rdv">ajouter un rendez-vous</a>
							</div>
							<div class="col-sm-6">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-info active"> <input type="radio"
										name="status" value="all" checked="checked"> Tous
									</label> <label class="btn btn-success"> <input type="radio"
										name="status" value="active"> termine
									</label> <label class="btn btn-warning"> <input type="radio"
										name="status" value="inactive"> ce mois
									</label> <label class="btn btn-danger"> <input type="radio"
										name="status" value="expired"> cette semaine
									</label>
								</div>
							</div>
						</div>
					</div>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>date</th>
								<th>heure</th>
								<th>medecin</th>
								<th>patient</th>
								<th>operation</th>
							</tr>
						</thead>
						<tbody>
							<tr data-status="active">
								<td>1</td>
								<td><a href="#">loremvallis.com</a></td>
								<td>04/10/2013</td>
								<td><span class="label label-success">Active</span></td>
								<td>Buenos Aires</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="inactive">
								<td>2</td>
								<td><a href="#">quisquamut.net</a></td>
								<td>05/08/2014</td>
								<td><span class="label label-warning">Inactive</span></td>
								<td>Australia</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="active">
								<td>3</td>
								<td><a href="#">convallissed.com</a></td>
								<td>11/05/2015</td>
								<td><span class="label label-success">Active</span></td>
								<td>United Kingdom</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="expired">
								<td>4</td>
								<td><a href="#">phasellusri.org</a></td>
								<td>06/09/2016</td>
								<td><span class="label label-danger">Expired</span></td>
								<td>Romania</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="inactive">
								<td>5</td>
								<td><a href="#">facilisleo.com</a></td>
								<td>12/08/2017</td>
								<td><span class="label label-warning">Inactive</span></td>
								<td>Germany</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
						</tbody>
					</table>
				</div>	
			</div>
			<div class="tab-pane fade" id="nav-profile" role="tabpanel"
				aria-labelledby="nav-profile-tab">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-6">
								<h2>
								</h2>
							</div>
							<div class="col-sm-6">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-info active"> <input type="radio"
										name="status" value="all" checked="checked"> All
									</label> <label class="btn btn-success"> <input type="radio"
										name="status" value="active"> Active
									</label> <label class="btn btn-warning"> <input type="radio"
										name="status" value="inactive"> Inactive
									</label> <label class="btn btn-danger"> <input type="radio"
										name="status" value="expired"> Expired
									</label>
								</div>
							</div>
						</div>
					</div>
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Domain</th>
								<th>Created&nbsp;On</th>
								<th>Status</th>
								<th>Server&nbsp;Location</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<tr data-status="active">
								<td>1</td>
								<td><a href="#">loremvallis.com</a></td>
								<td>04/10/2013</td>
								<td><span class="label label-success">Active</span></td>
								<td>Buenos Aires</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="inactive">
								<td>2</td>
								<td><a href="#">quisquamut.net</a></td>
								<td>05/08/2014</td>
								<td><span class="label label-warning">Inactive</span></td>
								<td>Australia</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="active">
								<td>3</td>
								<td><a href="#">convallissed.com</a></td>
								<td>11/05/2015</td>
								<td><span class="label label-success">Active</span></td>
								<td>United Kingdom</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="expired">
								<td>4</td>
								<td><a href="#">phasellusri.org</a></td>
								<td>06/09/2016</td>
								<td><span class="label label-danger">Expired</span></td>
								<td>Romania</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<tr data-status="inactive">
								<td>5</td>
								<td><a href="#">facilisleo.com</a></td>
								<td>12/08/2017</td>
								<td><span class="label label-warning">Inactive</span></td>
								<td>Germany</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="tab-pane fade" id="nav-contact" role="tabpanel"
				aria-labelledby="nav-contact-tab">
				<div class="table-wrapper">
					<div class="table-title">
						<div class="row">
							<div class="col-sm-8">
								<h2>
									Employee <b>Details</b>
								</h2>
							</div>
							<div class="col-sm-4">
								<button type="button" class="btn btn-info add-new">
									<i class="fa fa-plus"></i> Add New
								</button>
							</div>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th>Name</th>
								<th>Department</th>
								<th>Phone</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>John Doe</td>
								<td>Administration</td>
								<td>(171) 555-2222</td>
								<td><a class="add" title="Add" data-toggle="tooltip"><i
										class="material-icons">&#xE03B;</i></a> <a class="edit"
									title="Edit" data-toggle="tooltip"><i
										class="material-icons">&#xE254;</i></a> <a class="delete"
									title="Delete" data-toggle="tooltip"><i
										class="material-icons">&#xE872;</i></a></td>
							</tr>

						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
</body>
</html>