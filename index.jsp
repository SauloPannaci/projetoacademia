<%@ page import="org.libertas.treino" %>
<%@page import="org.libertas.treinoDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Academia Mega Mem</title>
    <style>
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        
        body {
            font-family: 'Roboto', sans-serif; /* Fonte moderna */
            background-color: #f5f5f5; /* Cor de fundo suave */
            padding: 50px;
            color: #333; /* Cor do texto */
        }

        
        h1 {
            text-align: center;
            color: #444;
            font-size: 2.5rem; /* Tamanho da fonte maior */
            margin-bottom: 40px;
        }

        
        .link-container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
            background-color: #fff; /* Fundo branco */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); /* Sombra suave */
            transition: transform 0.3s ease; /* Efeito de transição */
        }

        
        .link-container:hover {
            transform: scale(1.02); /* Leve aumento ao passar o mouse */
        }

        
        a {
            display: inline-block;
            margin: 20px 0;
            padding: 15px 40px;
            text-decoration: none;
            color: white;
            background-color: #007bff; /* Cor azul padrão */
            border-radius: 8px;
            font-size: 1.2rem;
            font-weight: bold;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        
        a:hover {
            background-color: #0056b3; /* Azul escuro no hover */
            transform: translateY(-5px); /* Leve elevação */
        }

        
        @media (max-width: 768px) {
            body {
                padding: 20px;
            }

            h1 {
                font-size: 2rem; /* Tamanho do título menor para telas pequenas */
            }

            a {
                padding: 12px 30px;
                font-size: 1rem;
            }
        }

    </style>
</head>
<body>

    <h1>Academia Mega Mem</h1>
    
    <div class="link-container">
        <a href="formulario.jsp?id=0">Novo Cadastro</a>
        <br/>
        <a href="listar.jsp">Listar</a>
    </div>

</body>
</html>
