<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.math.BigDecimal"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Manage CD</title>
</head>
<body>
	<h1>Add CD</h1>
	<form action="addCD" method="post">
		<table cellpadding="3pt">
			<tr>
				<td>CD Name :</td>
				<td><input type="text" name="cdName" size="30" /></td>
			</tr>
			<tr>
				<td>Details :</td>
				<td><input type="text" name="details" /></td>
			</tr>
			<tr>
				<td>Category :</td>
				<td>
				<select name="category">
					<option value="pop">POP</option>
					<option value=country>COUNTRY</option>
					<option value="rock">Rock</option>
				</select>
			</td>
			</tr>
			<tr>
				<td>Price :</td>
				<td><input type="number" name="price" min="0" /></td>
			</tr>
			<tr>
				<td>Stock :</td>
				<td><input type="number" name="stock" min="0" /></td>
			</tr>
		</table>
		<p />
		<input type="submit" value="Add CD" />
	</form>

 	<h1>Edit CD</h1>

	<form action="editCD" method="get">
		<table cellpadding="3pt">
			<tr>
				<td>CD Name :</td>
				<td><input id="cdName" type="text" name="cdName" size="30" /></td>
			</tr>
		</table>
		<p />
		<button onclick="fetchCDInfo()">Click me</button>
	</form>

	<script>
		function fetchCDInfo() {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (xhttp.readyState == 4 && xhttp.status == 200) {
					//document.getElementById("demo").innerHTML = xhttp.responseText;
					alert(xhttp.responseText);
				}
			}
			xhttp.open("GET", "/editCD?cdName=" + document.getElementById("cdName").innerText, true);
			xhttp.send();
		}
	</script>

</body>
</html>