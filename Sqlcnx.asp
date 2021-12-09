<%
session.lcid = 1046

SET conexao = SERVER.CREATEOBJECT("ADODB.CONNECTION")

SET rs = SERVER.CREATEOBJECT("ADODB.RECORDSET")

conexao.provider = "sqloledb"

conexao.ConnectionString = "Data Source=LOPES-PC\SQLEXPRESS01;persist security info= false;initial catalog=BD_ASP;uid=sa;pwd=12345"

conexao.CursorLocation = 3
conexao.OPEN

%>