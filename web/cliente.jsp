<%-- 
    Document   : cliente
    Created on : 21/09/2017, 09:15:14
    Author     : dolmedo
--%>

<%@page import="br.com.fatecpg.oo.Cliente"%>
<%@page import="br.com.fatecpg.oo.Bancodados"%>
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
    
     <%try{
         if (request.getParameter("enviar")!=null){
            String nome= request.getParameter("nome");
            String cpf= request.getParameter("cpf");
            String rg= request.getParameter("rg");
            String email= request.getParameter("email");
            String telefone= request.getParameter("telefone");
            String endereco= request.getParameter("endereco");
            
            Cliente o= new Cliente();
            o.setNome(nome);
            o.setCpf(cpf);
            o.setRg(rg);            
            o.setEmail(email);
            o.setTelefone(telefone);
            o.setEndereco(endereco);
            
            Bancodados.getcadastrocliente().add(o);
            
         }else if(request.getParameter("remove")!=null){
             int i=Integer.parseInt(request.getParameter("i"));
            Bancodados.getcadastrocliente().remove(i);
        }} catch(Exception ex){ %>
    <div> *erro ao processar o comando:<%=ex.getMessage()%></div>
       <% }  %>
    
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
        
            <h2>Lista</h2>
            <table border="1">
                <tr>
                    <th>Indice</th>
                    <th>Nome </th>
                    <th>CPF </th>
                    <th>RG </th>
                    <th>Email</th>
                    <th>Telefone</th>
                    <th>Endereço</th>
                    <th>Exclusao</th>
                </tr>
                                                
                <% for(int i=0; i<Bancodados.getcadastrocliente().size();i++){ %>
                <% Cliente o = Bancodados.getcadastrocliente().get(i);%>
                <tr>
                    <td><%=i%></td>
                    <td><%=o.getNome()%></td>
                    <td><%=o.getCpf()%></td>
                    <td><%=o.getRg()%></td>
                    <td><%=o.getEmail()%></td>
                    <td><%=o.getTelefone()%></td>
                    <td><%=o.getEndereco()%></td>
                    
                    <td>
                        <form>
                            <input type="hidden" name="i" value="<%=i%>"/>
                            <input type="submit" name="remove" value="Excluir"/>
                            
                        </form>
                    </td>
                </tr>
                                
                
                <%}%> 
            
    </div>
    </div>
    <br>
    <br>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
  </body>
</html>
