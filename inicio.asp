<!--#include file="superior.asp"-->  
<!--#include file="Sqlcnx.asp"-->  
<br><br>  
<div class="alert alert-success" role="alert">
  Olá Usuário(a), <br>seja bem-vindo(a) ao site de teste em ASP Classico
</div>

<br><br>
<%

sql = "select * from Cadastro"
set rs = conexao.execute(sql)

if not rs.eof then
%>
<div class="alert alert-primary" role="alert">
  Nova(s) Mensagem(s)<br>
<%do while not rs.eof%>  
 <%=rs("NomeFantasia")%> - <%=rs("RazaoSocial")%><br>
<%rs.movenext
loop%>
</div>

<%

end if

%>

</body>
</html>