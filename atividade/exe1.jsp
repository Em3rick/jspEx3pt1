<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Contagem de Acessos</title>
</head>
<body>
    <h1>Contagem de Acessos na Sessão</h1>

    <%

        HttpSession Hipsession = request.getSession(true);


        Integer acessos = (Integer) session.getAttribute("contador");

  
        if (acessos == null) {
            acessos = 0;
        }


        acessos++;


        session.setAttribute("contador", acessos);
    %>

    <p>Você acessou esta página <%= acessos %> vez(es) nesta sessão.</p>

    <p><a href="contagemAcessos.jsp">Clique aqui para atualizar a contagem.</a></p>
</body>
</html>
