<!--#include file="funcoes.asp"-->
<!--#include file="Sqlcnx.asp"-->
<%
usr =  request.form("Login")
snh =  request.form("Senha")
usr = trim(usr)
snh = trim(snh)
usr = replace(usr,"'","")
snh = replace(snh,"'","")

sql = "SELECT Id_usuario,Login,Senha from Usuario where Senha='"&snh&"' and Login = '"&usr&"'"
'Response.Write(sql)
'Response.end
set rs = conexao.execute(sql)
'response.write sql
'response.end
if rs.eof then
%>	
<script>
  alert("Usuário não tem acesso.")
   parent.location = "index.html"
</script>
<%
response.end
else
Session.Timeout=60
session("usr")  = usr
session("Id_usuario")  = rs("Id_usuario")
session("snh")  = snh


%>
<%
   response.redirect "inicio.asp" 
end if
%> 