<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"
import="armyCRUD.domain.Soldier"
import="armyCRUD.domain.Vehicle"
import="armyCRUD.domain.Unit"
import="armyCRUD.web.AddUnit"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Armia wściekłych lisów</title>
</head>
<body>
<div class="navbar">
            <div class="navbuttons">
                <div class="navbuttonhome"><a href="index.jsp"><img src="graphics/home.png" class="navbuttonhome"></a></div>
                <div class="navbutton"><a href="showAllUnits.jsp"><img src="graphics/unit.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllSoldiers.jsp"><img src="graphics/soldier.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllVehicles.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
        </div>
</div>
<jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
<jsp:useBean id="soldier" class="armyCRUD.domain.Soldier" scope="session" />
<jsp:useBean id="vehicle" class="armyCRUD.domain.Vehicle" scope="session" />
<div class="contentbox">
<form action="addUnit">
<table class="operationtable">
<tr class='tableheader'>
<td colspan='2'>Dodaj jednostkę</td>
</tr>
<tr>
<td>Żołnierz:</td>
<td>
<select name="soldiers">
<%
for (Soldier soldier2 : storage.getAllSoldiers())
{
out.println("<option value='" + soldier2.getId() + "'>" + soldier2.getId() + ". " + soldier2.getRank() + " " + soldier2.getName() + "</option>");
}
%>
</select>
</td>
</tr>
<tr>
<td>Pojazd:</td>
<td>
<select name="vehicles">
<%
for (Vehicle vehicle2 : storage.getAllVehicles())
{
out.println("<option value='" + vehicle2.getId() + "'>" + vehicle2.getId() + ". " + vehicle2.getName() + " " + vehicle2.getType() + "</option>");
}
%>
</select>
</td>
</tr>

<tr>
<td colspan="2"><input type="submit" value=" Dodaj " align="right"></td>
</tr>
</table>
</form>
</div>
</body>