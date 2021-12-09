<%  
function data_banco(data)
   if year(data) = null then
	  data_banco = null
   else
	  data_banco = year(data)&ZerosEsquerda(month(data),2)&ZerosEsquerda(day(data),2)
   end if
end function

function data_hora_banco(data)
   if year(data) = null then
	  data_hora_banco = null
   else
	  data_hora_banco = year(data)&ZerosEsquerda(month(data),2)&ZerosEsquerda(day(data),2)& " "&ZerosEsquerda(hour(data),2)&":"&ZerosEsquerda(minute(data),2)&":"&ZerosEsquerda(second(data),2)
   end if
end function


%>