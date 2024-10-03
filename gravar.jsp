<%@ page import="org.libertas.treino" %>
<%@ page import="org.libertas.treinoDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
//Inicializa o DAO
treinoDAO treinoDAO = new treinoDAO();
treino f = new treino();

// Verifica se o parâmetro 'id_treino' existe (para atualizar um treino existente)
String idTreinoParam = request.getParameter("id_treino");

try {
    // Se o 'id_treino' for passado, converte para inteiro e atualiza
    if (idTreinoParam != null && !idTreinoParam.isEmpty()) {
        f.setId_treino(Integer.parseInt(idTreinoParam));
    }
    
    // Obtém os demais parâmetros do formulário e define os valores no objeto Treino
    f.setNome(request.getParameter("nome"));
    f.setProfessor(request.getParameter("professor"));
    f.setDuracao(request.getParameter("duracao"));
    
    // Se o 'id_treino' for fornecido, atualiza o treino. Caso contrário, insere um novo.
    if (f.getId_treino() > 0) {
        treinoDAO.alterar(f);
    } else {
        treinoDAO.inserir(f);
    }

    // Redireciona para a página de listagem após a gravação
    response.sendRedirect("listar.jsp");
    
} catch (NumberFormatException e) {
    out.println("Erro: ID de treino inválido.");
    e.printStackTrace();
} catch (Exception e) {
    out.println("Erro ao gravar o treino: " + e.getMessage());
    e.printStackTrace();
}
%>
%>
	<h1>treino salvo com Sucesso</h1>
	<a href="index.jsp">ok</a>

</body>
</html>