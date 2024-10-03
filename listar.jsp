<%@ page import="org.libertas.treino" %>
<%@page import="org.libertas.treinoDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Cadrastro do treino</h1>
		<a href="formulario.jsp?id=0">Novo</a>
	
		<table border="1">
			<th>Id_treino</th>
			<th>Nome</th>
			<th>professor</th>
			<th>duraçao</th>
			<th>intensidade</th>
			<th>exercicio</th>
			<%
				treinoDAO tdao = new treinoDAO();
				for (treino f : tdao.listar()) {
					out.print("<tr>");
					out.print("<td>" + f.getId_treino() + "</td>");
					out.print("<td>" + f.getNome() + "</td>");
					out.print("<td>" + f.getProfessor() + "</td>");
					out.print("<td>" + f.getDuracao() + "</td>");
					out.print("<td>" + f.getIntensidade() + "</td>");
					out.print("<td>" + f.getExercicio() + "</td>");
					out.print("<td>");
					out.print("<a href='formulario.jsp?id=" + f.getId_treino() + "'>Alterar</a>");
					out.print("<a href='excluir.jsp?id=" + f.getId_treino() + "'>Excluir</a>");
					out.print("</td>");
					
					out.print("</tr>");
				}
			%>
		</table>
	<a href="index.jsp">Inicio</a>

</body>
</html>