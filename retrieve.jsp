<%@page import="java.sql.*" %>
<html>
<head>
<link rel="stylesheet" href="mystyle.css" />
</head>
<body>
<div>
<%
 Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from student");
out.println("<table border='1'>");
out.print("<caption id='one'>"+"Student Information:"+"<caption>");
    out.print("<tr><th>Id</th><th>Name</th><th>Branch</th></tr>");
while(rs.next())
{
out.print("<tr><td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+" </td>"+"<td>"+rs.getString(3)+"</td></tr>");
}
out.println("</table>");

con.close();
%>
</div>

<a href='index.html'><span>Back</span></a>
</body>
</html>