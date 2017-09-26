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
    <link href="css/teste.css" rel="stylesheet" media="screen">
    
  </head>
  <body background = "img/fundo.jpg">
      <h1 class="container cant" style="text-align: center ; background: #ccc ">Cadastro Cliente</h1>
      <br>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
     <%try{
        String nome1="";
        String cpf1 = "";
        String rg1="";
        String email1="";
        String telefone1="";
        String endereco1="";
         
         
         
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
        } else if (request.getParameter("alterar")!=null){
          int i= Integer.parseInt(request.getParameter("i"));
                nome1 = Bancodados.getcadastrocliente().get(i).getNome();
                cpf1 = Bancodados.getcadastrocliente().get(i).getCpf();
                rg1 = Bancodados.getcadastrocliente().get(i).getRg();
                email1 = Bancodados.getcadastrocliente().get(i).getEmail();
                telefone1 = Bancodados.getcadastrocliente().get(i).getTelefone();
                endereco1 = Bancodados.getcadastrocliente().get(i).getEndereco();
                Bancodados.getcadastrocliente().remove(i);
        
        }
          
     %>
    
    
    <div class="container conteudo cant  " style="text-align: center; background: #ccc ;  ">
      <div class= "jumbotron ">
        <form>
          <fieldset>
              <table align = "center" style="text-align: left">
                        <tr>
                            <td><h3>Nome : </h3> </td>  
                            <td><input class="input-block-level" type="text" name="nome" value="" placeholder="Nome Sobrenome" pattern="[a-z A-Z]{5,}"></td>
                        </tr>
                        <tr> 
                            <td><h3>CPF : </h3></td>
                            <td><input class="input-block-level" type="text" name="cpf" value="" placeholder="12345678900" pattern="[0-9]{11}"></td>
                        </tr>
                        <tr>
                            <td><h3>RG : </h3></td>
                            <td><input class="input-block-level" type="text" name="rg" value="" placeholder="12345678x" pattern="[0-9]{8}[xX0-9]{1}"></td>
                        </tr>
                        <tr>
                            <td><h3>Email : </h3></td>
                            <td><input class="input-block-level" type="text" name="email" value="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" placeholder="example@email.com"></td>
                        </tr>
                        <tr>
                            <td><h3>Telefone : </h3></td>
                            <td><input class="input-block-level" type="text" name="telefone" value="" placeholder="1399996666" pattern="[0-9]{10,11}"></td>
                        </tr>
                        <tr>
                            <td><h3>Endereço : </h3></td>
                            <td><input class="input-block-level" type="text" name="endereco" value="" placeholder="Rua A 123" pattern="[a-zA-Z 0-9]{7,}"></td>
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
                    <th>Exclusão/Alteração</th>
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
                            <input class="btn btn-inverse" type="submit" name="remove" value="Excluir"/>
                            <input class="btn btn-inverse" type="submit" name="alterar" value="Alterar"/>
                            
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
