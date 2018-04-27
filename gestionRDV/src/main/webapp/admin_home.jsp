<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.gestionRDV.beans.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<title>gestion des rendez-vous</title>
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="bootstrap/js/popper.js"></script>
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link type="text/css" rel="stylesheet" href="css/style.css" />

<script type="text/javascript" src="js/scripts.js">
	
</script>
</head>
<body>

	<%
		Admin user = (Admin) request.getAttribute("user");
	%>
	<%!
		public String status(Date date)
		{
			Calendar c = Calendar.getInstance();
			c.setFirstDayOfWeek(Calendar.MONDAY);

			c.set(Calendar.DAY_OF_WEEK, Calendar.MONDAY);
			c.set(Calendar.HOUR_OF_DAY, 0);
			c.set(Calendar.MINUTE, 0);
			c.set(Calendar.SECOND, 0);
			c.set(Calendar.MILLISECOND, 0);

			Date now = new Date();
			Date monday = c.getTime();

			Date nextMonday= new Date(monday.getTime()+7*24*60*60*1000);

			 if(date.after(now) && date.before(nextMonday) && ( date.getYear() == now.getYear() ) )
			 {
				 	return "semaine";
			 }
			// Now see if the month and year match.
			else if (date.after(now)  && (date.getMonth() == now.getMonth()) && ( date.getYear() == now.getYear() ) ) {
				
				return "mois";
			}
			else if(date.before(now))
			{
				return "termine";
			}
			 return "";
		}
	%>
	<div class="container-fluid ">


		<div class="jumbotron jumbotron-fluid">

			<img id="profile_picture" src="images/admin.png" /><br>
			<div>
				<a href="logout" class="btn btn-danger btn-lg active" role="button"
					aria-pressed="true">deconnecter</a>
			</div>
		</div>
		<nav id="tabnav" class="nav-justified">
		<div class="nav nav-tabs" id="nav-tab" role="tablist">
			<a class="nav-item nav-link active" id="nav-home-tab"
				data-toggle="tab" href="#nav-home" role="tab"
				aria-controls="nav-home" aria-selected="true">les rendez-vous</a> <a
				class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab"
				href="#nav-profile" role="tab" aria-controls="nav-profile"
				aria-selected="false">les medecins</a> <a class="nav-item nav-link"
				id="nav-contact-tab" data-toggle="tab" href="#nav-contact"
				role="tab" aria-controls="nav-contact" aria-selected="false">les
				patients</a>
		</div>
		</nav>

		<div class="tab-content" id="nav-tabContent">
			<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
				aria-labelledby="nav-home-tab">
				<div class="table-wrapper">
					<div id="top">
						<div class="table-title">
							<div class="row">
								<div class="col-sm-6">
										<button  style="height: 40px;" type="button" class="add_rdv btn btn-info" data-toggle="modal" data-target="#addform">
										  ajouter un rendez-vous
										</button>
								</div>
								<div class="col-sm-6">
									<div class="btn-group" data-toggle="buttons">
										<label class="btn btn-info active"> <input
											type="radio" name="status" value="all" checked="checked">
											Tous
										</label> <label class="btn btn-success"> <input type="radio"
											name="status" value="termine"> termine
										</label> <label class="btn btn-warning"> <input type="radio"
											name="status" value="mois"> ce mois
										</label> <label class="btn btn-danger"> <input type="radio"
											name="status" value="semaine"> cette semaine
										</label>
									</div>
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
								<th>status</th>
								<th>operation</th>
							</tr>
						</thead>
						<tbody>
							<%
								if (request.getAttribute("rdvs") != null) {
									java.text.DateFormat df = java.text.DateFormat.getDateInstance();
									List<RDV> rdvs = (List<RDV>) request.getAttribute("rdvs");
									for (RDV r : rdvs) {
							%>
							<tr data-status=<%=status(r.getDate()) %>>
								<td><%=r.getId()%></td>
								<td><%=df.format(r.getDate())%></td>
								<td><%=r.getHeure()%></td>
								<td><%=r.getMedecin().getNomMedecin()%></td>
								<td><%=r.getPatient().getNomPatient()%></td>
								<td><%
						
								

								switch(status(r.getDate())){
								case "termine":out.print("<span class=\"label label-success\">termine</span>");break;
								case "mois":out.print("<span class=\"label label-warning\">ce mois</span>");break;
								case "semaine":out.print("<span class=\"label label-danger\">semaine</span>");break;
								default:out.print("<span class=\"label label-info\">plutard </span>");break;
								}
								%>
								</td>
								<td><a href="#" class="btn btn-sm manage">Manage</a></td>
							</tr>
							<%
									}
								}
							%>
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
								<td>Romania</td>
								<td><span class="label label-danger">ss</span></td>
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
								<h2></h2>
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
								<td><span class="label label-danger">sssssssss</span></td>
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
		
		<!-- 
		modals  pop up forms
		 -->
		 <!-- Button trigger modal -->
		
		
		<!-- Modal -->
		<div class="modal fade" id="addform" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">ajouter un rendez-vous</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">annuler</button>
		        <button type="button" class="btn btn-primary">enregistrer</button>
		      </div>
		    </div>
		  </div>
		</div>
		<a id="back-to-top" href="#"
			class="btn btn-primary btn-lg back-to-top" role="button"
			title="Cliquez pour retourner en haut de la page"
			data-toggle="tooltip" data-placement="left"> <span
			class="glyphicon glyphicon-triangle-top">^</span></a>

	</div>

</body>
</html>