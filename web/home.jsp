
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
    <link href="css/teste.css" rel="stylesheet" media="screen">
  </head>
  <body background = "img/fundo.jpg">
    <h1 class="container cant" style="text-align: center ; background: #ccc ">Quantidade De Cadastros</h1>
    <br><
    <div class="cent" >
    <div class="container div2 " style="float: left  ; background: #ccc" >
        <h2>Clientes </h2>
        <br>
        <h2 style="background: white ; border: 1px solid"> <%=Bancodados.getcadastrocliente().size()%></h2>
    </div>
  
    <div class="container div2 " style="float: right; background: #ccc">
        <h2>Fornecedores </h2> 
        <br>
        <h2 style="background: white; border: 1px solid"> <%=Bancodados.getFornecedor().size()%> </h2> 
    </div>
    </div>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
   <%@include file="WEB-INF/jspf/footer.jspf" %>
  </body>
</html>

