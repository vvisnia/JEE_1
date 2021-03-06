<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="armyCRUD.domain.Unit"%>
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
                <div class="navbutton"><a href="showAllUnits.jsp"><img src="graphics/unit.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllSoldiers.jsp"><img src="graphics/soldier.png" class="navbutton"></a></div>
                <div class="navbutton"><a href="showAllVehicles.jsp"><img src="graphics/vehicle.png" class="navbutton"></a></div>
        </div>


    <div class="contentbox">
            <!--<a href="getUnitData.jsp" class="buttonlink"><div class="addbutton">+</div></a>-->
            <table class="operationtable">
        <tr class="tableheader">
            <td colspan="2">Operacje</td>
        </tr>
        <tr>
            <td colspan="2"><a href="getUnitData.jsp"><div class="opbutton"><img src="graphics/plus2.png"></div></a></td>
        </tr>
    <tr>
        <form action="selectUnit.jsp">
        <td><input type="text" name="idSelect" value="Podaj ID"/></td>
        <!--<td><a href="selectUnit.jsp"><div class="opbutton"><img src="graphics/select.png"></div></a></td>-->
        <td><input type="image" src="graphics/select.png" border="0" alt="Submit" onclick="window.location.href='selectUnit.jsp'" /></td>
        </form>
    </tr>
    <tr>
        <form action="updateUnit.jsp">
        <td><input type='text' name='idedit' value="Podaj ID"/></td>
        <!--<td><a href="getUnitData.jsp"><div class="opbutton"><img src="graphics/update.png"></div></a></td>-->
        <td><input type="image" src="graphics/update.png" border="0" alt="Submit" /></td>
        </form>
    </tr>
    <tr>
        <form action="deleteUnit">
        <td><input type='text' name='iddelete' value="Podaj ID"/></td>
        <!--<td><a href="getUnitData.jsp"><div class="opbutton"><img src="graphics/delete2.png"></div></a></td>-->
        <td><input type='image' src="graphics/delete2.png" border="0" alt="Submit"/></td>
        </form>
    </tr>
    </table>
        <jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
        <table class="presentationtable" align="center">
    <tr>
        <td>ID</td>
        <td>ID Żołnierza</td>
        <td>ID Pojazdu</td>
        <!--<td colspan="3">Operacje</td>-->
    </tr>
    <%
    for (Unit unit : storage.getAllUnits())
    {
    out.println(
    "<tr><td>" + unit.getId() + "</td>" +
    "<td>" + unit.getSoldierId() + "</td>" +
    "<td>" + unit.getVehicleId() + "</td>" +
    /*"<td><img src=" + "graphics/preview.png" + " class=\"actionbutton\"></td>" +
    "<td><img src=" + "graphics/edit.png" + " class=\"actionbutton\"></td>" +
    "<td><img src=" + "graphics/delete2.png" + " class=\"actionbutton\"></td>" +*/
    "</tr>");
    }
    %>
    </table>
    </div>
    </body>
</html>