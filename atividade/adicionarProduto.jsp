<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produto Adicionado</title>
</head>
<body>
<%

    String produto = request.getParameter("produto");

    if (produto != null && !produto.trim().isEmpty()) {
        
        java.util.List <String> produtos = (java.util.List <String> ) session.getAttribute("produtos");


        if (produtos == null) {
            produtos = new java.util.ArrayList<>();
        }

        
        produtos.add(produto);


        session.setAttribute("produtos", produtos);
    }

   
    response.sendRedirect("formProduto.jsp");
%>
</body>
</html>
