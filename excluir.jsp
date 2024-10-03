<%@ page import="org.libertas.treino" %>
<%@ page import="org.libertas.treinoDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>treino excluído</title>
</head>
<body>

<%
    
    treino f = new treino();
    
    // Receba o id e atribua ao objeto filme
    f.setId_treino(Integer.parseInt(request.getParameter("id")));
    
    // Declare o FilmeDao
    treinoDAO fdao = new treinoDAO();
    
    // Execute o método excluir
    fdao.excluir(f);
%>

<div class="message-container">
    <h1>Registro excluído com sucesso!</h1>
    <a href="listar.jsp">Voltar</a>
</div>

</body>
</html>