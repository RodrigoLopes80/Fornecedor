<!--#include file="superior.asp"-->  
<!--#include file="Sqlcnx.asp"-->  

<%


'RECEBENDO CÓDIGO COMO PARAMETRO E EVT PARA SABER SE VAI INCLUIR OU ALTERAR
cod  = Request.QueryString("cod")
evt  = Request.QueryString("evt")

if cod <> "" then
   cod = cint(cod)
end if

if ucase(evt) = "ALT" then
   sql = "SELECT * from Usuario where Id_usuario = "&cod
'  Response.Write(sql)
'  Response.End()
   set rs = conexao.execute(sql)
   Senha      = rs("Senha") 
   Login    = rs("Login")    
   bot        = "Alterar"
else
   ativo = 0
   bot       = "Incluir"
end if

%>

<div class="container">
<br><br>
  <form class="form-horizontal" action="Menu_user.asp" method="post">
      <div class="form-group">
      <label class="control-label col-sm-2" for="nome"><b>Login:</b></label>
      <div class="col-sm-4">
        <input type="text" class="form-control"  placeholder="Login" name="Login" value="<%=Login%>">
      </div>
    </div>    



    <div class="form-group">
      <label class="control-label col-sm-2" for="nome"><b>Senha:</b></label>
      <div class="col-sm-4">
        <input type="password" class="form-control" name="Senha" value="<%=Senha%>">
      </div>
    </div>    

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default" name="Botao" value="<%=bot%>"><%=bot%></button>
      </div>
    </div>
	<input type="hidden" name="hfcod" value="<%=cod%>">	
  </form>
</div>

</body>
</html>