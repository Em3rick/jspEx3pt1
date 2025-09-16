<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bem-vindo</title>
</head>
<body>
<%
    String usuario = (String) session.getAttribute("usuario");

    if (usuario != null) {
%>
        <h2>Bem-vindo, <%= usuario %>!</h2>
        <a href="login.jsp">Sair</a>
<%
    } else {
%>
        <p>Você não está logado. <a href="login.jsp">Clique aqui para fazer login</a>.</p>
<%
    }
%>
</body>
</html>
