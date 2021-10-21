<br>
<!--#include file="Sqlcnx.asp"-->
<!--#include file="funcoes.asp"-->
<%
session.LCID = 1046
opc          = request.querystring("opc")
botao        =  request.form("botao")
cod			 =  request.form("hfcod")
NomeFantasia =  request.form("NomeFantasia")
RazaoSocial  =  request.form("RazaoSocial")
CNPJ         =  request.form("CNPJ")
Endereco     =  request.form("Endereco")
Cidade     	 =  request.form("Cidade")

if botao = "Incluir" then
  sql = "insert into Cadastro (NomeFantasia,RazaoSocial,CNPJ, Endereco, Cidade)"
  sql = sql & " values('"&NomeFantasia&"','"&RazaoSocial&"','"&CNPJ&"','"&Endereco&"','"&Cidade&"')"
  
  conexao.execute(sql)
%>
<script>
    alert("Dados incluídos com sucesso!")
    parent.location = "cadFornecedor.asp"
</script>
<%
elseif botao = "Alterar" then

  sql = "update Cadastro set"
  sql = sql & " NomeFantasia = '"&NomeFantasia&"',"
  sql = sql & " RazaoSocial = '"&RazaoSocial&"',"  
  sql = sql & " CNPJ = '"&CNPJ&"',"  
  sql = sql & " Endereco = '"&Endereco&"',"  
  sql = sql & " Cidade = '"&Cidade&"'"  
  sql = sql & " where Id = "&cod 

  conexao.execute(sql)
%>
<script>
    alert("Dados alterado com sucesso!")
    parent.location = "cadFornecedor.asp"
</script>
<%
elseif opc <> "" then
   cod = request.querystring("cod")
   sql = "delete from Cadastro where Id="&cod

   conexao.execute(sql)
%>
<script>
    alert("Fornecedor excluído com sucesso!")
    parent.location = "cadFornecedor.asp"
</script>
<%
end if
%>