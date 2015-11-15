<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="armyCRUD.domain.Vehicle"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css">
        <title>Armia Wściekłych Lisów</title>
    </head>

    <body>
        <div class="navbar">
            <div class="navbuttons">
                <div class="navbuttonhome"><a href="index.jsp"><img src="graphics/home.png" class="navbuttonhome"></a></div>
                <div class="navbutton"><a href="unit.jsp"><img src="graphics/unit.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllSoldiers.jsp"><img src="graphics/soldier.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllVehicles.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
        </div>


    <div class="contentbox">
            <!--<a href="getVehicleData.jsp" class="buttonlink"><div class="addbutton">+</div></a>-->
            <table class="operationtable">
        <tr class="tableheader">
            <td colspan="2">Operacje</td>
        </tr>
        <tr>
            <td colspan="2"><a href="getVehicleData.jsp"><div class="opbutton"><img src="graphics/plus2.png"></div></a></td>
        </tr>
    <tr>
        <form action="selectVehicle.jsp">
        <td><input type="text" name="idSelect" value="Podaj ID"/></td>
        <!--<td><a href="selectVehicle.jsp"><div class="opbutton"><img src="graphics/select.png"></div></a></td>-->
        <td><input type="image" src="graphics/select.png" border="0" alt="Submit" onclick="window.location.href='selectVehicle.jsp'" /></td>
        </form>
    </tr>
    <tr>
        <form action="updateVehicle.jsp">
        <td><input type='text' name='idedit' value="Podaj ID"/></td>
        <!--<td><a href="getVehicleData.jsp"><div class="opbutton"><img src="graphics/update.png"></div></a></td>-->
        <td><input type="image" src="graphics/update.png" border="0" alt="Submit" /></td>
        </form>
    </tr>
    <tr>
        <form action="deleteVehicle">
        <td><input type='text' name='iddelete' value="Podaj ID"/></td>
        <!--<td><a href="getVehicleData.jsp"><div class="opbutton"><img src="graphics/delete2.png"></div></a></td>-->
        <td><input type='image' src="graphics/delete2.png" border="0" alt="Submit"/></td>
        </form>
    </tr>
    </table>
        <jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
        <table class="presentationtable" align="center">
    <tr>
        <td>ID</td>
        <td>Nazwa</td>
        <td>Typ</td>
        <td>Stan</td>
        <td>Prędkość</td>
        <!--<td colspan="3">Operacje</td>-->
    </tr>
    <%
    for (Vehicle vehicle : storage.getAllVehicles())
    {
    out.println(
    "<tr><td>" + vehicle.getId() + "</td>" +
    "<td>" + vehicle.getName() + "</td>" +
    "<td>" + vehicle.getType() + "</td>" +
    "<td>" + vehicle.getStatus() + "</td>" +
    "<td>" + vehicle.getSpeed() + "</td>" +
    /*"<td><img src=" + "graphics/select.png" + " class=\"actionbutton\"></td>" +
    "<td><img src=" + "graphics/edit.png" + " class=\"actionbutton\"></td>" +
    "<td><img src=" + "graphics/delete2.png" + " class=\"actionbutton\"></td>" +*/
    "</tr>");
    }
    %>
    </table>
    </div>
    </body>
</html>