<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
         <jsp:useBean id="storage" class="armyCRUD.service.StorageService" scope="application" />
        <jsp:useBean id="vehicle" class="armyCRUD.domain.Vehicle" scope="session" />

        <div class="contentbox">
            <form action="addVehicle.jsp">
            <table class="operationtable">
        <tr class='tableheader'>
            <td colspan='2'>Dodawanie pojazdu</td>
        </tr>
        <tr>
            <td>Nazwa:</td>
            <td><input type="text" name="name" value="${Vehicle.Name}" /></td>
        </tr>
        <tr>
            <td>Typ:</td>
                    <td><input type="text" name="type" value="${Vehicle.Type}" /></td>
        </tr>
        <tr>
            <td>Stan:</td>
            <td><input type="text" name="status" value="${Vehicle.Status}" /></td>
        </tr>
        <tr>
            <td>Prędkość:</td>
            <td><input type="text" name="speed" value="${Vehicle.Speed}" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value=" Dodaj pojazd " align="right"></td>
        </tr>
            </table>
            </form>
        </div>
    </body>
</html>