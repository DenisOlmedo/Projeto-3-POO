<%@page import="br.com.fatecpg.oo.Bancodados"%>
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
                 Bancodados.getFornecedor().add(fornecedor);
             }else if(request.getParameter("remove")!=null){
                int i = Integer.parseInt(request.getParameter("i"));
                Bancodados.getFornecedor().remove(i);
             }else if(request.getParameter("alterar")!=null){
                int i= Integer.parseInt(request.getParameter("i"));
                nome1 = Bancodados.getFornecedor().get(i).getNome();
                razao1 = Bancodados.getFornecedor().get(i).getRazaosocial();
                cnpj1 = Bancodados.getFornecedor().get(i).getCnpj();
                email1 = Bancodados.getFornecedor().get(i).getEmail();
                telefone1 = Bancodados.getFornecedor().get(i).getTelefone();
                endereco1 = Bancodados.getFornecedor().get(i).getEndereco();
                Bancodados.getFornecedor().remove(i);
             }%>  
                <div class="container conteudo cant " style="text-align: center; background: #ccc ;  ">
        <div class= "jumbotron ">
        <form>
          <fieldset>
              <table align = "center">
                            <tr>
                                <td><h3>Nome : </h3> </td>  
                                <td><input type="text" name="nome" value="" placeholder="Nome Sobrenome" pattern="[a-z A-Z]{5,}"></td>
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
                                <td><input type="text" name="email" value="" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" placeholder="example@email.com"></td>
                            </tr>
                            <tr>
                                <td><h3>Telefone :</h3></td>
                                <td><input type="text" name="telefone" value="" placeholder="1399996666" pattern="[0-9]{10,11}"></td>
                            </tr>
                            <tr>
                                <td><h3>Endereço :</h3></td>
                                <td><input type="text" name="endereco" value="" placeholder="Rua A 123" pattern="[a-zA-Z 0-9]{7,}"></td>
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
            <%for(int i=0; i<Bancodados.getFornecedor().size();i++){
                Fornecedor fornecedor = Bancodados.getFornecedor().get(i);%>
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
