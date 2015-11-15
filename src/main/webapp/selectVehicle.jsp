<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="armyCRUD.domain.Vehicle"%>
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
                <div class="navbutton"><a href="unit.jsp"><img src="graphics/unit.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllSoldiers.jsp"><img src="graphics/soldier.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllVehicles.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
        </div>
</div>
<jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
<jsp:useBean id="vehicle" class="armyCRUD.domain.Vehicle" scope="session" />
<jsp:setProperty name="vehicle" property="*" />
<div class="contentbox">
<table class="operationtable">
<%
String Id = request.getParameter("idSelect");
String Name = "", Type = "", Status = ""; int Speed = -1;
for (Vehicle v : storage.getAllVehicles())
{
if (v.getId() == Integer.parseInt(Id))
{
                Name = v.getName();
                Name = v.getName();
                Type = v.getType();
                Status = v.getStatus();
                Speed = v.getSpeed();
                break;
            }
}
out.println("<form action='selectVehicle'><input type='hidden' name='id' value='" + Id + "' /><tr class='tableheader'><td colspan='2'>Id Pojazdu=" + Id + "</td></tr><tr><td>Nazwa:</td><td><input type='text' name='name' value='" + Name + "' /></td></tr><tr><td>Typ:</td><td><input type='text' name='type' value='" + Type + "' /></td></tr><tr><td>Stan:</td><td><input type='text' name='status' value='" + Status + "' /></td></tr><tr><td>Prędkość:</td><td><input type='text' name='speed' value='" + Integer.toString(Speed) + "' /></td></tr></form>");
out.println("<p align='center'><a href='showAllVehicles.jsp'>Powrót do listy żołnierzy</a></p>");
%>

</table>
</div>
</body>
</html>