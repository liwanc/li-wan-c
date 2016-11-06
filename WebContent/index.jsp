<%@ page language="java" import="java.sql.*,com.sve.table.*,com.sve.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/table-template.tld" prefix="tt" %>
<%!
	String sql="select *from t_user where id<10";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function prit(){
	alert("666${DB.getSQL() }");
}
</script>
</head>
<%
	session.setAttribute("sql", sql); 
%>
<body>

	<tt:table width="400" height="100" items="${sql }" css="color:red"> 
		<tt:td width="80" height="10px" value="a" title="A"></tt:td>
		<tt:td width="80" height="10px" value="b" title="B"></tt:td> 
		<tt:td width="80" height="10px" value="c" title="C"></tt:td> 
		<tt:td width="80" height="10px" value="b" title="D"></tt:td>   
	</tt:table>
</body>
</html>