<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sessões</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");

            String nome = "";
            String sobrenome = "";

            //if(session.getAttribute("nomeUsuario") != null) {
            //  nome = (String)session.getAttribute("nomeUsuario");
            //  sobrenome = (String)session.getAttribute("sobrenomeUsuario");
            //}
            //
            //OU
            nome = session.getAttribute("nomeUsuario") != null
                    ? session.getAttribute("nomeUsuario").toString() : "";

            sobrenome = session.getAttribute("sobrenomeUsuario") != null
                    ? session.getAttribute("sobrenomeUsuario").toString() : "";

        %>
        <h1>Trabalhando com a "Sessão"</h1>
        <hr>
        <br>
        <h3>Guardado na sessão:</h3>
        <ul>
            <li>Nome: <%=nome%></li>
            <li>Sobrenome: <%=sobrenome%></li>
        </ul>
        <br>
        <a href="./">Voltar para a página inicial</a>
    </body>
</html>
