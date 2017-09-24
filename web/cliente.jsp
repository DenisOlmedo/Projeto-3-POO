<%-- 
    Document   : cliente
    Created on : 21/09/2017, 09:15:14
    Author     : dolmedo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Cliente</title>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    
  </head>
  <body>
      <h1 style="text-align: center">Cadastro Cliente</h1>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    <div class="container conteudo " style="text-align: center; background: #ccc ;  ">
        <div class= "jumbotron ">
        <form>
          <fieldset>
            
            <h3>Nome :    
                <input type="text" name="nome" value="" placeholder="Type something…"></h3>
              <br>
            <h3>CPF :
                <input type="text" name="cpf" value="" placeholder="Type something…"> </h3>
              <br>
            <h3>RG :
                <input type="text" name="rg" value="" placeholder="Type something…"></h3>
            <br>
            <h3>Email :
                <input type="text" name="email" value="" placeholder="Type something…"></h3>
            <br>
            <h3>Telefone :
                <input type="text" name="telefone" value="" placeholder="Type something…"></h3>
            <br>
            <h3>Endereço :
                <input type="text" name="endereco" value="" placeholder="Type something…"></h3>
           
            <button type="submit" class="btn btn-inverse">Cadastrar</button>
          </fieldset>
        </form>
        
    </div>
    </div>
    <br>
    <br>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
  </body>
</html>
