<%@page import="logica.Pelicula"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="org.apache.jasper.JasperException"%>
<%-- 
    Document   : peliculas lo mismo que catalogo pero solo de peliculas
    Created on : 29/05/2017, 09:43:16 PM
    Author     : tona
--%>
<%
    // A esta pagina se deberia de mandar al usuario premium despues de iniciar sesion, y al artista si ya fue aprovado por el admin
    // Aqui declarar las variables de sesion para poder mostrar el menu correcto de navbarUsers y redirigir a otra pagina de ser necesario
    Conexion con = new Conexion();
    ResultSet rs = con.consulta("spGetJustMovies");
    if (rs == null){
        System.out.println("NULL");
    }
    ArrayList<Pelicula> peliculas = new ArrayList<Pelicula>();
    while (rs.next()) {
        Pelicula pel = new Pelicula();
        pel.setId(rs.getInt("idFilme"));
        pel.setTitulo(rs.getString("titulo"));
        pel.setCalificacion(rs.getDouble("puntuacion"));
        pel.setAutor();
        pel.setTipo(rs.getInt("tipo"));
        pel.setCategorias();
        peliculas.add(pel);
    }
    con.cerrar();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Peliculas</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <script src="../js/jquery.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="../css/barra.css">
        <link rel="icon" href="../images/logo1.png">
    </head>
    <body>
        <%@include file="../navbarUsers.jsp" %>
        <div class="container">
            <div class="page-header">
                <h2>Sólo Peliculas</h2>
            </div>
            <div class = "list-group">
                <%
                for (Pelicula peli : peliculas) {
                %>
                <a href ="/Ver?q=<%=peli.getId()%>" class = "list-group-item">
                    <h4 class = "list-group-item-heading">
                        <%=peli.getTitulo()%><br>
                        <p><small>by <strong><%=peli.getAutor()%></strong></small></p>
                    </h4>
                    <span class = "badge"><%=peli.getCalificacion()%></span>
                    <p class = "list-group-item-text">
                        Tipo: <span class="label label-info"><%=peli.getTipo()%></span>
                        Categoria:
                        <%for (String categoria: peli.getCategorias()) {
                            System.out.println(categoria);
                        %>
                        <span class="label label-primary"><%=categoria%></span>
                        <%
                        }
                        %>
                    </p>
                </a>
                <%}%>
            </div>
        </div>
    </body>
</html>
