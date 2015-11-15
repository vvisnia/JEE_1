<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="armyCRUD.domain.Soldier"%>
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
                <div class="navbutton"><a href="vehicle.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
        </div>
</div>
<jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
<jsp:useBean id="soldier" class="armyCRUD.domain.Soldier" scope="session" />
<jsp:setProperty name="soldier" property="*" />
<div class="contentbox">
<table class="operationtable">
<%
String Id = request.getParameter("idedit");
String Rank = "", Name = ""; int yearOfService = -1;
for (Soldier s : storage.getAllSoldiers())
{
if (s.getId() == Integer.parseInt(Id))
{
                Rank = s.getRank();
                Name = s.getName();
                yearOfService = s.getyearOfService();
                break;
            }
}
out.println("<form action='updateSoldier'><input type='hidden' name='id' value='" + Id + "' /><tr class='tableheader'><td colspan='2'>Id Żołnierza=" + Id + "</td></tr><tr><td>Ranga:</td><td><input type='text' name='rank' value='" + Rank + "' /></td></tr><tr><td>Nazwa:</td><td><input type='text' name='name' value='" + Name + "' /></td></tr><tr><td>Lata Służby:</td><td><input type='text' name='yearOfService' value='" + Integer.toString(yearOfService) + "' /></td></tr><tr><td colspan='2'><input type='submit' value='ZAPISZ'></td></tr></form>");
out.println("<p align='center'><a href='showAllSoldiers.jsp'>Powrót do listy żołnierzy</a></p>");

%>
</table>
</div>
</body>
</html>