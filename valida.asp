<%
'on error resume next
' Consulta
'Server.ScriptTimeout = 100000
 Session.Timeout = 60

'response.Write(session("usr"))
sql = "SELECT Id_usuario,Login,Senha from Usuario where Senha='"&session("snh")&"' and Login = '"&session("usr")&"'"
'response.write sql
set rs_val = conexao.execute(sql)


if rs_val.eof then
%>	
<script>
  alert("Sessão expirada, favor logar novamente.")
   parent.location = "index.html"
</script>
<%
session("usr") = ""
session("snh") = ""
'response.end
end if
%>
 
