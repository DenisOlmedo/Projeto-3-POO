<%-- 
    Página teste para o hashmap
--%>

<%@page import="app.BdHm"%>
<%@page import="br.com.fatecpg.oo.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
  <head>
    <title>Fornecedores</title>
    <%@include file="WEB-INF/jspf/header.jspf" %>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="css/teste.css" rel="stylesheet" media="screen">
  </head>
  
  <body background = "img/tec.jpg">
      <h1 class="container conteudo cant" style="text-align:center; background: #ccc ;">Cadastro Fornecedor</h1>
      <br>
    <script src="http://code.jquery.com/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    
    
    
    
    
    
    <%try{
        
        String nome1="";
        String razao1 = "";
        String cnpj1="";
        String email1="";
        String telefone1="";
        String endereco1="";
        
             if(request.getParameter("botao")!=null){
                 
                 String nome = request.getParameter("nome");
                 String razao = request.getParameter("razao");
                 String cnpj = request.getParameter("cnpj");
                 String email = request.getParameter("email");
                 String telefone = request.getParameter("telefone");
                 String endereco = request.getParameter("endereco");
                 Fornecedor fornecedor = new Fornecedor();
                 fornecedor.setNome(nome);
                 fornecedor.setRazaosocial (razao);
                 fornecedor.setCnpj(cnpj);
                 fornecedor.setEmail(email);
                 fornecedor.setTelefone(telefone);
                 fornecedor.setEndereco(endereco);
                 BdHm.getFornecedor().put(key, fornecedor);
             }else if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("i"));
                BdHm.getFornecedor().remove(i);
             }else if(request.getParameter("alterar")!=null){
                int i= Integer.parseInt(request.getParameter("i"));
                nome1 = BdHm.getFornecedor().get(i).getNome();
                razao1 = BdHm.getFornecedor().get(i).getRazaosocial();
                cnpj1 = BdHm.getFornecedor().get(i).getCnpj();
                email1 = BdHm.getFornecedor().get(i).getEmail();
                telefone1 = BdHm.getFornecedor().get(i).getTelefone();
                endereco1 = BdHm.getFornecedor().get(i).getEndereco();
                BdHm.getFornecedor().remove(i);
             }%>  
                <div class="container conteudo cant " style="text-align: center; background: #ccc ;  ">
        <div class= "jumbotron ">
        <form>
          <fieldset>
              <table align = "center">
                            <tr>
                                <td><h3>Nome : </h3> </td>  
                                <td><input type="text" name="nome" value="<%=nome1%>" placeholder="Type something…"></td>
                            </tr>
                            <tr>
                                <td><h3>Razão Social :</h3> </td>
                                <td> <input type="text" name="razao" value="<%=razao1%>" placeholder="Type something…"> </td>
                            </tr>
                            <tr>
                                <td><h3>CNPJ :</h3></td>
                                <td> <input type="text" name="cnpj" value="<%=cnpj1%>" placeholder="Type something…"></td>
                            </tr>
                            <tr>
                                <td><h3>Email :</h3></td>
                                <td><input type="text" name="email" value="<%=email1%>" placeholder="Type something…"></td>
                            </tr>
                            <tr>
                                <td><h3>Telefone :</h3></td>
                                <td><input type="text" name="telefone" value="<%=telefone1%>" placeholder="Type something…"></td>
                            </tr>
                            <tr>
                                <td><h3>Endereço :</h3></td>
                                <td><input type="text" name="endereco" value="<%=endereco1%>" placeholder="Type something…"></td>
                            </tr>
              </table>
                        <button type="submit" name="botao" class="btn btn-inverse">Cadastrar</button>
             
          </fieldset>
        </form>
        </div>
                </div>
                            <br><br>
                            
   <div class="container conteudo cant" style="text-align: center; background: #ccc ;  ">
          <div class= "jumbotron ">                         
        
            <h2>Lista</h2>
        <table class="table table-striped table-hover">
            <tr>
                
                <th>Nome</th>
                <th>Razao Social</th>
                <th>CNPJ</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Endereco</th>
                <th>Excluir/Alterar</th>
                
            </tr>
            <%for(int i=0; i<BdHm.getFornecedor().size();i++){
                Fornecedor fornecedor = BdHm.getFornecedor().get(i);%>
                <tr>
                    <td><%=fornecedor.getNome()%></td>
                    <td><%=fornecedor.getRazaosocial()%></td>
                    <td><%=fornecedor.getCnpj()%></td>
                    <td><%=fornecedor.getEmail()%></td>
                    <td><%=fornecedor.getTelefone()%></td>
                    <td><%=fornecedor.getEndereco()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="i" value="<%=i%>"/>
                            <input type="submit" name="remove" value="Excluir"/>
                            <input type="submit" name="alterar" value="Alterar"/>
                        </form>
                    </td>   
                </tr>
            <%}%>
        </table>
       
    </div>
    </div>
    <br>
    <br>
            <%}catch(Exception ex){%>
            <div>Erro ao Processar o comando: <%=ex.getMessage()%></div>
        <%}%>
        
    <%@include file="WEB-INF/jspf/footer.jspf" %>
  </body>
</html>
