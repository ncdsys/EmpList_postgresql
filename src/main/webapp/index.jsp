<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
  
<html>  
<head>  

<sql:query dataSource="jdbc/ps" var="democusts">  
   select * from EMPLIST 
</sql:query>
  </head>  
  <body>  
	<h1>Testing JDBC JNDI PostgreSQL</h1>  
	<table width='500' border='1'>  
	  <tr>  
		<th align='left'>EMP Id</th>  
		<th align='left'>EMP Name</th>    
	  </tr>  
	  <c:forEach var="democusts" items="${democusts.rows}">  
		<tr>  
		   <td> ${democusts.EMPID}</td>  
		   <td> ${democusts.EMPNAME} </td>  
	   </tr>  
	  </c:forEach>  
	</table>
  </body>  
  </html>
