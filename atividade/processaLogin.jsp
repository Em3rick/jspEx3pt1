<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Processando Login</title>
</head>
<body>
<%
    String usuario = request.getParameter("usuario");
    String senha = request.getParameter("senha");

    // Validação simples do login
    if ("admin".equals(usuario) && "1234".equals(senha)) {
        session.setAttribute("usuario", usuario);
        response.sendRedirect("bemVindo.jsp");
    } else {
%>
        <p>Login inválido. Tente novamente.</p>
        <a href="login.jsp">Voltar</a>
<%
    }
%>
</body>
</html>
