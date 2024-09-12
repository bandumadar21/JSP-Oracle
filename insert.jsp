<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="mystyle.css" />
</head>
<body>
<div style="margin-top: 50px;">
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
Statement stmt=con.createStatement();
int i=stmt.executeUpdate("insert into student values(102,'John', 'EEE')");
if(i>0)
{
out.print("Data is Inserted Successfully");
}
else
{
out.print("Data is not Inserted Successfully, Recheck logic");
}
con.close();
%>
</div>
<a href='index.html'><span>Back</span></a>
</body>
</html>