<!--#include file="superior.asp"-->  
<!--#include file="Sqlcnx.asp"-->  
<%
sql = "select * from Cadastro order by NomeFantasia"
set rs = conexao.execute(sql)

%>
   <script>
	function Excluir(cod)
	{
	 if(confirm("Confirma exclusão?"))
	  {
	    parent.location = "Menu.asp?opc=exc&cod=" + cod ;
      }   
	}  	
   </script>

	<br/>
	<div class="container">
	 <form action="formFornecedor.asp" method=post>
	  <button type="submit" class="btn btn-success">Adicionar</button><hr/>
		<h4><i class="fa-solid fa-box-open"></i>&nbsp&nbsp Fornecedor</h4>
	     <div class="table-responsive">          
		  <table class="table">
           <thead>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"/>
			   <tr>  
				<th>#</th>
				<th>Nome Fantasia</th>
				<th>Razão Social</th>
				<th>CNPJ</th>	
				<th>Endereço</th>
				<th>Cidade</th>
				<!--<th>Estado</th>	
				<th>Responsavel</th>
				<th>Email</th>
				<th>Telefone</th>	
				<th>Categoria</th>
				<th>DataCadastro</th>	-->  
				<th>#</th>				
			   </tr>
		   </thead>
    <tbody>
	
	<%do while not rs.eof%>
      <tr>
        <td>
		 <a href="formFornecedor.asp?evt=alt&cod=<%=rs("Id")%>">
		 <i class="fa-solid fa-pen-to-square"></i>
			</a>		
			</td>
			<td><%=rs("NomeFantasia")%></td>
			<td><%=rs("RazaoSocial")%></td>
			<td><%=rs("CNPJ")%></td>
			<td><%=rs("Endereco")%></td>	
			<td><%=rs("Cidade")%></td>			
			<td>
		 <a href="javascript:Excluir(<%=rs("Id")%>)">
		 <i class="fa-solid fa-calendar-xmark"></i>
         </a>		
		</td>
      </tr>
	<%
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