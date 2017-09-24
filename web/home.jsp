
<%@page import="br.com.fatecpg.oo.Bancodados"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Home</title>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  <body>
    <h1>Hello, world!</h1>
    <h2>Quantidade de Clientes cadastrados = <%=Bancodados.getcadastrocliente().size()%></h2>
    <h2>Quantidade de Fornecedores cadastrados = <%=Bancodados.getFornecedor().size()%> </h2> 
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
   <%@include file="WEB-INF/jspf/footer.jspf" %>
  </body>
</html>

