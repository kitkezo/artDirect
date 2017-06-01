<%@page import="java.util.ArrayList"%>
<%@page import="logica.Pelicula"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="org.apache.jasper.JasperException"%>
<%-- 
    Document   : serie lo mismo que catalogo pero solo series
    Created on : 29/05/2017, 09:43:33 PM
    Author     : tona
--%>
<%
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Series</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../css/barra.css">
    </head>
    <body>
        <%@include file="../navbarUsers.jsp" %>
        <div class="container">
            <div class="page-header">
                <h2>Series cheveres</h2>
            </div>
            <div class = "list-group">

                <a href = "#" class = "list-group-item">
                    <h4 class = "list-group-item-heading">
                        Serie generica
                        <p><small>by <strong>nombreArtistico</strong></small></p>
                    </h4>
                    <span class = "badge">9.5</span>
                    <p class = "list-group-item-text">
                        Tipo: <span class="label label-info">Pelicula</span>  Categoria: <span class="label label-primary">Ciencia Ficción</span>
                    </p>
                </a>

                <a href = "#" class = "list-group-item">
                    <h4 class = "list-group-item-heading">
                        Serie Generica 2<br>
                        <p><small>by <strong>nombreArtistico</strong></small></p>
                    </h4>
                    <span class = "badge">5.2</span>
                    <p class = "list-group-item-text">
                        Tipo: <span class="label label-success">Serie</span>  Categoria: <span class="label label-primary">Drama</span>
                    </p>
                </a>
            </div>
            
            
        </div>
            
    </body>
</html>
