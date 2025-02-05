<%@page import="java.net.URLEncoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies</title>
    </head>
    <body>
        <h1>Trabalhando com Cookies - Gerador</h1>
        <hr>
        <%
            request.setCharacterEncoding("UTF-8");
            String nome = (request.getParameter("nome") != null)
                    ? request.getParameter("nome") : "";

            String sobrenome = (request.getParameter("sobrenome") != null)
                    ? request.getParameter("sobrenome") : "";

            String nomeUTF = URLEncoder.encode(nome, "UTF-8");
            String sobrenomeUTF = URLEncoder.encode(sobrenome, "UTF-8");
            
            Cookie cookieNome = new Cookie("userName", nomeUTF);
            Cookie cookieSobrenome = new Cookie("userLastName", sobrenomeUTF);

            cookieNome.setVersion(0);
            cookieSobrenome.setVersion(0);

            //se você quiser que o cookies não seja apgado "nunca", comente essas linhas:
            //cookieNome.setMaxAge(180); //tempo em segundos
            //cookieSobrenome.setMaxAge(180);

            response.addCookie(cookieNome);
            response.addCookie(cookieSobrenome);
        %>
        <h3>
            Olá <%= nome + " " + sobrenome%>! Seja bem-vindo(a)! :D
        </h3>
        <h4>
            Seus dados foram persistidos em cookies!
        </h4>
        <a href="./">Voltar para a página inicial</a>
    </body>
</html>