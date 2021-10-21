<!--#include file="superior.asp"-->  
<!--#include file="Sqlcnx.asp"-->  

<%
cod = Request.QueryString("cod")
evt  = Request.QueryString("evt")
if cod <> "" then
   cod = cint(cod)
end if
if ucase(evt) = "ALT" then
  sql = "SELECT * from Cadastro where Id = "&cod
  set rs = conexao.execute(sql)
  NomeFantasia  = rs("NomeFantasia") 
  RazaoSocial   = rs("RazaoSocial") 
  CNPJ    		= rs("CNPJ") 
  Endereco      = rs("Endereco") 
  Cidade      = rs("Cidade") 

   bot        = "Alterar"
   lbl        = "Alteração"
else
   bot       = "Incluir"
   lbl       = "Cadastro"
end if	

%>

<div class="container">
<br><br>
<h4><label class="control-label col-sm-2" value="<%=lbl%>"><%=lbl%></label></h4><hr/>
  <form class="form-horizontal" action="Menu.asp" method="post">

    <div class="form-group">
      <label class="control-label col-sm-2" for="NomeFantasia"><b>Nome Fantasia:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="NomeFantasia" placeholder="Nome Fantasia" name="NomeFantasia" value="<%=NomeFantasia%>">
      </div>
    </div>

    <div class="form-group">
      <label class="control-label col-sm-2" for="RazaoSocial"><b>Razão Social:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="RazaoSocial" placeholder="Razão Social" name="RazaoSocial" value="<%=RazaoSocial%>">
      </div>
    </div>
	
	   <div class="form-group">
      <label class="control-label col-sm-2" for="CNPJ"><b>CNPJ:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="CNPJ" placeholder="CNPJ" name="CNPJ" value="<%=CNPJ%>">
      </div>
    </div>
	   <div class="form-group">
      <label class="control-label col-sm-2" for="Endereco"><b>Endereço:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="Endereco" placeholder="Endereço" name="Endereco" value="<%=Endereco%>">
      </div>
    </div>
	 <div class="form-group">
      <label class="control-label col-sm-2" for="Cidade"><b>Cidade:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control" id="Cidade" placeholder="Cidade" name="Cidade" value="<%=Cidade%>">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success" name="Botao" value="<%=bot%>"><%=bot%></button>
      </div>
    </div>
	<input type="hidden" name="hfcod" value="<%=cod%>">	
  </form>
</div>

</body>
</html>