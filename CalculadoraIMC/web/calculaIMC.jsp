<%@page import="br.uninove.Imc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String peso, altura;
    Imc imc = new Imc();
     
    peso = request.getParameter("peso");
    altura = request.getParameter("altura");

    imc.setAltura(Float.parseFloat(altura));
    imc.setPeso(Float.parseFloat(peso));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora IMC</title>
    </head>
    <body>
        <h1>Calculadora IMC</h1>
        <hr>
        <br>
        <p><strong>Peso informado: </strong><%=peso%>Kg</p>
        <p><strong>Altura informada: </strong><%=String.format("%.2f", imc.getAltura())%>m</p>
        <p><strong>IMC: </strong><%= String.format("%.2f", imc.calculaImc()) %></p>
        <p><strong>Classificação: </strong><span style="color: <%=imc.getCor()%>;"><%=imc.getClassficacao()%><span></p>
        <br><br>
        <a href="index.html">Calcular novamente...</a>
    </body>
</html>
