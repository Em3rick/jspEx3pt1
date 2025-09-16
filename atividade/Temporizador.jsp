<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Informa��es de Sess�o</title>
</head>
<body>
    <h1>Informa��es da Sess�o</h1>
    
    <% 
       
        long creationTime = session.getCreationTime();

        long loggedInTime = System.currentTimeMillis() - creationTime;


        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String formattedCreationTime = sdf.format(new Date(creationTime));
    %>

    <p><strong>Hora de Cria��o da Sess�o:</strong> <%= formattedCreationTime %></p>

    <p><strong>Tempo Logado (em segundos):</strong> 
    <%= loggedInTime / 1000 %> segundos</p>
    
</body>
</html>
