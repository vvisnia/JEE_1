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
String Id = request.getParameter("idSelect");
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


out.println("<tr class='tableheader'><td colspan='2'>Id jednostki=" + Id + "</td></tr><tr><td>Id zołnierza:</td><td>" + SoldierId + "</td></tr><tr><td>Id pojazdu:</td><td>" + VehicleId + "</td></tr>");
out.println("<p align='center'><a href='showAllUnits.jsp'>Powrót do listy jednostek</a></p>");
 %>



</table>
</div>
</body>
</html>