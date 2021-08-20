<%@page import="br.uninove.PrimeiraClasse"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu primeiro JSP</title>
    </head>
    <body>
        <h1>
            <%
                PrimeiraClasse minhaClasse = new PrimeiraClasse();
                out.print(minhaClasse.olaMundo());
            %>
        </h1>
    </body>
</html>
