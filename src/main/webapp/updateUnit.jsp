<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@page
import="armyCRUD.domain.Soldier"
import="armyCRUD.domain.Vehicle"
import="armyCRUD.domain.Unit"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<title>Sklep muzyczny</title>
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

<jsp:setProperty name="soldier" property="*" />
<div class="contentbox">
<table class="operationtable">
<%
String Id = request.getParameter("idedit");
int SoldierId = -1, VehicleId = -1;
String SoldierInf = "", VehicleInf = "";
int Price = -1;
for (Unit o : storage.getAllUnits())
{
if (o.getId() == Integer.parseInt(Id))
{
SoldierId = o.getSoldierId();
VehicleId = o.getVehicleId();

break;
}
}
for (Soldier c : storage.getAllSoldiers())
{
if (c.getId() == SoldierId)
{
SoldierInf = c.getRank() + " " + c.getName();
break;
}
}
for (Vehicle e : storage.getAllVehicles())
{
if (e.getId() == VehicleId)
{
VehicleInf = e.getName() + " " + e.getType();
break;
}
}

out.println("<form action='updateUnit'><input type='hidden' name='id' value='" + Id + "' /><tr class='tableheader'><td colspan='2'>Id jednostki=" + Id + "</td></tr><tr><td>Żołnierz:</td><td><select name='soldiers'>");
for (Soldier soldier2 : storage.getAllSoldiers())
{
out.println("<option value='" + soldier2.getId() + "'>" + soldier2.getId() + ". " + soldier2.getRank() + " " + soldier2.getName() + "</option>");
}
out.println("</select></td></tr><tr><td>Pojazd:</td><td><select name='vehicles'>");
for (Vehicle vehicle2 : storage.getAllVehicles())
{
out.println("<option value='" + vehicle2.getId() + "'>" + vehicle2.getId() + ". " + vehicle2.getType() + " " + vehicle2.getName() + "</option>");
}

out.println("</select><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr>");
out.println("<p align='center'><a href='showAllUnits.jsp'>Powrót do listy jednostek</a></p>");
%>
</table>
</div>
</body>
</html>