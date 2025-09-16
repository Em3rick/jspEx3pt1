<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista</title>
</head>
<body>
	<%
		
		String produto = request.getParameter("produto");
	
		if( produto.isEmpty() ){
			response.sendRedirect( request.getContextPath() + "/exe3a.jsp" );
		}
		else {
			ArrayList<String> lista = (ArrayList<String>) session.getAttribute("lista");
			lista.add(produto);
			session.setAttribute("lista", lista);
			response.sendRedirect( request.getContextPath() + "/exe3a.jsp" );
		}
	%>
	
	<a href="exe3a.jsp">Voltar</a>

</body>
</html>