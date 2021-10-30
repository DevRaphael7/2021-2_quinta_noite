<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sessões</title>
    </head>
    <body>
        <h1>Trabalhando com a "Sessão"</h1>
        <hr>
        <br>
        <%
            request.setCharacterEncoding("UTF-8");
            String nome = (request.getParameter("nome") != null)
                    ? request.getParameter("nome") : "";

            String sobrenome = (request.getParameter("sobrenome") != null)
                    ? request.getParameter("sobrenome") : "";
            
            //Colocar as duas variárias (valor) na sessão:
            session.setAttribute("nomeUsuario", nome);
            session.setAttribute("sobrenomeUsuario", sobrenome);
        %>
        <h3>
            Olá <%= nome + " " + sobrenome %>! Seja bem-vindo(a)! :D
        </h3>
        <h4>
            Seus dados foram persistidos na sessão!
        </h4>
        <a href="./">Voltar para a página inicial</a>
    </body>
</html>
