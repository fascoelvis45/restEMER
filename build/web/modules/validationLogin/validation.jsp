<%-- 
    Document   : validation
    Created on : 07-feb-2016, 20:44:18
    Author     : Elvis
--%>

<%@page import="java.util.List"%>
<%@include file="../util/conectionDB.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
    </head>
    <body>



        <%

            String login = request.getParameter("user");
            String password = request.getParameter("password");
            String url = "";
            SQL = "SELECT * FROM usuario "
                    + " where usuario = '" + login + "'  "
                    + " and password = '" + password + "'";

            rs = scSQL.executeQuery(SQL);

            if (rs.next()) {
                out.print("==>> id User :" + rs.getObject("id"));
                SQL = "SELECT * FROM usuario_rol "
                        + " where id_usuario = '" + rs.getObject("id") + "'"
                        + " and estado='1' ";

                rs = scSQL.executeQuery(SQL);

                if (rs.next()) {
                    out.print("==>>  :" + rs.getObject("rol"));

                    if (rs.getObject("rol").equals("COCINERO")) {
                        url = "../cocina/home.jsp";
                    } else if (rs.getObject("rol").equals("ALMACENERO")) {
                        url = "../almacen/home.jsp";
                    } else if (rs.getObject("rol").equals("MOZO")) {
                        url = "../servicio/home.jsp";
                    } else if (rs.getObject("rol").equals("CAJERO")) {
                        url = "../caja/home.jsp";
                    } else if (rs.getObject("rol").equals("CADMINISTRADOR")) {
                        url = "../admin/home.jsp";
                    }

                } else {
                    url = "sinRol.jsp";
                }

            } else {

                url = "login.jsp";

            }

        %>



        <meta http-equiv="refresh" content="0; <%=url%>" />

    </body>
</html>
