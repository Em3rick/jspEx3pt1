# jspEx3pt1

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
        // Recupera a sessão atual
        HttpSession Hipsession = request.getSession(true);

        // Obtém o contador de acessos, se existir
        Integer acessos = (Integer) session.getAttribute("contador");

        // Se o contador não existir, inicializa com 0
        if (acessos == null) {
            acessos = 0;
        }

        // Incrementa o contador
        acessos++;

        // Armazena o novo valor de acessos na sessão
        session.setAttribute("contador", acessos);
    %>

    <p>Você acessou esta página <%= acessos %> vez(es) nesta sessão.</p>

    <p><a href="contagemAcessos.jsp">Clique aqui para atualizar a contagem.</a></p>
</body>
</html>
