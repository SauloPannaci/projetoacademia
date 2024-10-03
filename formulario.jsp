<%@ page import="org.libertas.treino" %>
<%@ page import="org.libertas.treinoDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Academia Mega Men</title>
</head>
<body>
<%
		int id_treino = Integer.parseInt(request.getParameter("id"));
		treino f = new treino();
		treinoDAO fdao = new treinoDAO();
		if (id_treino > 0) {
			f = fdao.consultar(id_treino);
		}else {
			
			f.setNome("");
			f.setProfessor("");
			f.setDuracao("");
			f.setIntensidade("");
			f.setExercicio("");
		}
	%>

	<form action="gravar.jsp" method="post">
		<input type="hidden" name="id_filme" value="<%= f.getId_treino() %>"/>
		Nome:
		<input type="text" name="nome" value="<%= f.getNome() %>"/>
		<br/>
		Professor:
		<input type="text" name="professor" value="<%= f.getProfessor() %>"/>
		<br/>
		Duracao:
		<input type="text" name="duracao" value="<%= f.getDuracao() %>"/>
		<br/>
		Intensidade:
		<input type="text" name="intensidade" value="<%= f.getIntensidade() %>"/>
		<br/>
		Exercicio:
		<input type="text" name="exercicio" value="<%= f.getExercicio() %>"/>
		<br/>
		<input type="submit" value="salvar"/>
	</form>
</body>
</html>