<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%
	ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");

 	if( lista == null ){
 		lista = new ArrayList<String>();
 		session.setAttribute("lista", lista);
 	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Carrinho de Compras</title>
</head>
<body>
	<form action="exe3b.jsp" method="post">
			Digite um produto:<input type="text" name="produto"> <br>
			<input type="submit" value="Enviar">
	
	</form>
	<%
		if( ! lista.isEmpty() )
			for( String p: lista )
				out.print("<h2>" + p + "</h2>");
	%>
	
</body>
</html>