<br>
<!--#include file="Sqlcnx.asp"-->
<!--#include file="funcoes.asp"-->
<%
session.LCID = 1046
'RECEBENDO CAMPOS DO FORMUL�RIO
opc          = request.querystring("opc")
botao        =  request.form("botao")
cod          =  request.form("hfcod")
Login      =  request.form("Login")
Senha        =  request.form("Senha")

if botao = "Incluir" then
' INCLUINDO OS DADOS RECEBIDOS NA TABELA

   sql = "insert into Usuario (Login,Senha)"
   sql = sql & " values('"&Login&"','"&Senha&"')"
'   response.write sql
'   response.end
   conexao.execute(sql)
%>
<script>
    alert("usuario inclu�do com sucesso!")
    parent.location = "CadUsuario.asp"
</script>
<%
elseif botao = "Alterar" then
' ALTERANDO OS DADOS RECEBIDOS NA TABELA

  sql = "update Usuario set"
  sql = sql & " Login = '"&Login&"',"
  sql = sql & " Senha = '"&Senha&"'"  
  sql = sql & " where Id_usuario = "&cod 
'response.write sql
'response.end
  conexao.execute(sql)
%>
<script>
    alert("Dados alterado com sucesso!")
    parent.location = "cadUsuario.asp"
</script>
<%
elseif opc <> "" then
' DELETANDO REGISTRO SELECIONADO
   cod = request.querystring("cod")
   sql = "delete from Usuario where Id_usuario ="&cod
'  response.write sql
'  response.end
   conexao.execute(sql)
%>
<script>
    alert("usuario exclu�do com sucesso!")
    parent.location = "cadUsuario.asp"
</script>
<%
end if
%>