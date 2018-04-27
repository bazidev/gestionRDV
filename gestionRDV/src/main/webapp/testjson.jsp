<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<script type="text/javascript">
$(function(){
	console.log("hello");
	$(document).on("click", "#somebutton", function() {  // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...

		console.log("hello");
		$.get("loadData", function(responseJson) {  

			console.log("hello");
			// Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
	        var $ul = $("<ul>").appendTo($("#somediv")); // Create HTML <ul> element and append it to HTML DOM element with ID "somediv".
	        $.each(responseJson, function(index, item) { // Iterate over the JSON array.
	            $("<li>").text(item).appendTo($ul);      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
	        });
	    });
	});
	
});
</script>
<body>
	<button id="somebutton">click me</button>
	<div id="somediv">
	</div>
</body>
</html>