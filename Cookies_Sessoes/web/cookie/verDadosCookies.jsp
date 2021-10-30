<%@page import="java.net.URLDecoder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cookies</title>
    </head>
    <body>
        <h1>Trabalhando com Cookies</h1>
        <hr>
        <br>
        <%
            request.setCharacterEncoding("UTF-8");
            final String cookieNome = "userName";
            final String cookieSobrenome = "userLastName";

            Cookie cookies[] = request.getCookies();
            Cookie cookieUsu = null;
            Cookie cookieLastName = null;

            if (cookies != null) {
                for (int i = 0; i < cookies.length; i++) {
                    if (cookies[i].getName().equalsIgnoreCase(cookieNome)) {
                        cookieUsu = cookies[i];
                    }
                    if (cookies[i].getName().equalsIgnoreCase(cookieSobrenome)) {
                        cookieLastName = cookies[i];
                    }
                }
            }
        %>
        <br>
        <% if (cookieUsu != null && cookieLastName != null) {%>
            <h2>Dados recuperados do cookie:</h2>
            <strong>Nome: </strong><%= URLDecoder.decode(cookieUsu.getValue(), "UTF-8")%><br>
            <strong>Sobrenome: </strong><%= URLDecoder.decode(cookieLastName.getValue(), "UTF-8") %>
        <% } else { %>
            <h2>Cookies não encontradas! :(</h2>
        <% }%>
        <br>
        <br>
        <a href="./">Voltar para a página inicial do proejto de Cookies</a>
    </body>
</html>