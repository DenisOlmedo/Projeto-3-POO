<%-- 
    Document   : funcionario
    Created on : 21/09/2017, 09:15:59
    Author     : dolmedo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Funcionario</title>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  </head>
  <body>
    <h1>Cadastro Fornecedor</h1>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
        <div>
        <form>
          <fieldset>
            
            <p>Nome</p>
            <input type="text" name="nome" value="" placeholder="Type something…">
            <p>Razão Social</p>
            <input type="text" name="cpf" value="" placeholder="Type something…">
            <p>CNPJ</p>
            <input type="text" name="rg" value="" placeholder="Type something…">
            <p>Email</p>
            <input type="text" name="email" value="" placeholder="Type something…">
            <p>Telefone</p>
            <input type="text" name="telefone" value="" placeholder="Type something…">
            <p>Endereço</p>
            <input type="text" name="endereco" value="" placeholder="Type something…">
            
            <label class="checkbox">
              <input type="checkbox"> Check me out
            </label>
            <button type="submit" class="btn">Cadastrar</button>
          </fieldset>
        </form>
        
    </div>
    
  </body>
</html>