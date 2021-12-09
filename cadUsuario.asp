<!--#include file="superior.asp"-->  
<!--#include file="Sqlcnx.asp"-->  
<!--#include file="valida.asp"-->   


<%

sql = "select * from Usuario order by Login "
set rs = conexao.execute(sql)

%>
  <script>
function Excluir(cod)
   {
	 if(confirm("Confirma exclusão?"))
	  {
	    parent.location = "Menu_user.asp?opc=exc&cod=" + cod ;
      }
   
   } 
 	
 </script>

<br/>
<div class="container">
<form action="formUsuario.asp" method=post>
 <button type="submit" class="btn btn-success">Adicionar</button><hr/>
<h4><i class="fa-solid fa-user"></i>&nbsp&nbsp Usuários</h4>
  <div class="table-responsive">          
  <table class="table">
    <thead>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
      <tr>
        <th>#</th>
        <th>Usuario</th>
        <th>#</th>		
      </tr>
    </thead>
    <tbody>
<%
'AQUI COMEÇA O DO WHILE ONDE TRARÁ AS LINHAS DE ACORDO COM O SELECT FEITO
do while not rs.eof%>
      <tr>
        <td>
 <a href="formUsuario.asp?evt=alt&cod=<%=rs("Id_usuario")%>">
	 <i class="fa-solid fa-pen-to-square"></i>
        </a>		
		</td>
        <td><%=rs("Login")%></td>

        <td>
 <a href="javascript:Excluir(<%=rs("Id_usuario")%>)">
	 <i class="fa-solid fa-calendar-xmark"></i>
        </a>		
		</td>

      </tr>
<%
'LOOP DEPOIS DA LINHA PARA QUE SE REPITA ENQUANTO TIVER REGISTROS NO SELECT FEITO
rs.movenext
loop
%>	  
    </tbody>
  </table>

  </div>
</form>

</div>
</body>
</html>