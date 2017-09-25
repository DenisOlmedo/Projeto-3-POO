<%-- 
    Página teste para o hashmap
--%>

<%@page import="br.com.fatecpg.oo.Cliente"%>
<%@page import="app.BdHm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
      
    <title>Cliente</title>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/teste.css" rel="stylesheet" media="screen">
    
  </head>
  <body background = "img/tec.jpg">
      <h1 class="container cant" style="text-align: center ; background: #ccc ">Cadastro Cliente</h1>
      <br>
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
            
            BdHm.getCliente().put(key, o);
            
         }else if(request.getParameter("remove")!=null){
             int i=Integer.parseInt(request.getParameter("i"));
            BdHm.getCliente().remove(i);
           
        }%>
    
    
    <div class="container conteudo cant  " style="text-align: center; background: #ccc ;  ">
      <div class= "jumbotron ">
        <form>
          <fieldset>
              <table align = "center">
                        <tr>
                            <td><h3>Nome : </h3> </td>  
                            <td><input type="text" name="nome" value="" placeholder="Type something…"></td>
                        </tr>
                        <tr> 
                            <td><h3>CPF : </h3></td>
                            <td><input type="text" name="cpf" value="" placeholder="Type something…"> 
                        </tr>
                        <tr>
                            <td><h3>RG : </h3></td>
                            <td> <input type="text" name="rg" value="" placeholder="Type something…"></td>
                        </tr>
                        <tr>
                            <td><h3>Email : </h3></td>
                            <td><input type="text" name="email" value="" placeholder="Type something…"></td>
                        </tr>
                        <tr>
                            <td><h3>Telefone : </h3></td>
                            <td><input type="text" name="telefone" value="" placeholder="Type something…"></td>
                        </tr>
                        <tr>
                            <td><h3>Endereço : </h3></td>
                            <td><input type="text" name="endereco" value="" placeholder="Type something…"></td>
                        <tr>
              </table>
                    <button type="submit" class="btn btn-inverse" name="enviar">Cadastrar</button>
          </fieldset>
        </form>
            
      </div>
    </div>
    <br>
    <br> 
        <div class="container conteudo cant " style="text-align: center; background: #ccc ;  ">
          <div class= "jumbotron ">
            
            <h2>Lista</h2>
           
            <table class=" table table-striped table-hover"  >
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
                                                
                <% for(int i=0; i<BdHm.getCliente().size();i++){ %>
                <% Cliente o = BdHm.getCliente().get(i);%>
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
                            <input type="submit" name="alterar" value="Excluir"/>
                            
                        </form>
                    </td>
                </tr>
                <%}%>                 
            </table>   
                
             </div>
    </div>
                <%}catch(Exception ex){%>
            <div>Erro ao Processar o comando: <%=ex.getMessage()%></div>
        <%}%>
    
    <%@include file="WEB-INF/jspf/footer.jspf" %>
  </body>
</html>