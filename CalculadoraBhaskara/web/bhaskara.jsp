<%@page import="br.uninove.Bhaskara"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String a, b, c;
            double delta;

            a = request.getParameter("valorA"); //Sempre retorna uma String
            b = request.getParameter("valorB"); //Sempre retorna uma String
            c = request.getParameter("valorC"); //Sempre retorna uma String
        %>
        <jsp:useBean id="bhaskara" class="br.uninove.Bhaskara" scope="page" />
        <jsp:setProperty name="bhaskara" property="a" value="<%=a%>"/>
        <jsp:setProperty name="bhaskara" property="b" value="<%=b%>"/>
        <jsp:setProperty name="bhaskara" property="c" value="<%=c%>"/>
        <h1>Calculadora de Bhaskara</h1>
        <hr>
        <p>Dado: <%=a%>x² + <%=b%>x + <%=c%>, temos que:</p>
        <%
            delta = bhaskara.calculaDelta();
        %>
        <p>Delta = <%= (delta < 0) ? "Delta é negativo (" + delta + ")" : delta %></p>
        <p>Raiz+ = <%= (delta < 0) ? "Não há raiz real" : bhaskara.raizPositiva(delta)%>
        <p>Raiz- = <%= (delta < 0) ? "Não há raiz real" : bhaskara.raizNegativa(delta)%>
    </body>
</html>

<!--
"if ternário" ou condição ternária funciona assim:
<expressão booleana> ? <valor se verdadeiro> : <valor se falso>
-->