<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adicionar Produto</title>
</head>
<body>
    <h2>Adicionar Produto</h2>
    <form action="adicionarProduto.jsp" method="post">
        <label for="produto">Nome do Produto:</label>
        <input type="text" id="produto" name="produto" required><br><br>
        <input type="submit" value="Adicionar Produto">
    </form>

    <hr>

    <h3>Lista de Produtos</h3>
    <%
        
        java.util.List<String> produtos = (java.util.List<String>) session.getAttribute("produtos");
        if (produtos != null && !produtos.isEmpty()) {
    %>
        <ul>
            <% for (String produto : produtos) { %>
                <li><%= produto %></li>
            <% } %>
        </ul>
    <% } else { %>
        <p>A lista de produtos está vazia.</p>
    <% } %>
</body>
</html>
