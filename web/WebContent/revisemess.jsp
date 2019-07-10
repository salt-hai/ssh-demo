<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改留言</title>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link href="css/style.css" type="text/css" rel="stylesheet" />
<link href="css/style-desktop.css" type="text/css" rel="stylesheet" />
<link type="text/css" href="css/dierye.css" rel="stylesheet" />

<%@ page import="java.sql.*"%>
<html>
<form action="${pageContext.request.contextPath }/deleteMsgAction"
	method="post">
	<div align="center">
		输入您想删除的id号:<input type="text" id="id" name="id"> <input
			type="submit" value="删除当前id留言">
	</div>
</form>
<body bgcolor=#AAFFEE>
	<div align="center">
		<%
			Connection con;
			PreparedStatement sql;
			ResultSet rs;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			} catch (Exception e) {
				out.println("忘记把MYSQL数据库驱动程序复制到JDK的扩展目录中");
			}
			try {
				String uri = "jdbc:mysql://127.0.0.1/miss";
				String user = "root";
				String password = "root";
				con = DriverManager.getConnection(uri, user, password);
				sql = con.prepareStatement(
						"select * from idea where username = '" + session.getAttribute("username") + "'");
				rs = sql.executeQuery();
				out.print("<br><br><h2>当前用户的留言：</h2><br><br>");
				out.print("<table border=2>");
				out.print("<tr>");
				out.print("<th width=100>" + "id");
				out.print("<th width=100>" + "用户名");
				out.print("<th width=100>" + "内容");
				out.print("</tr>");
				while (rs.next()) {
					out.print("<tr>");
					out.print("<td>" + rs.getString(1) + "</td>");
					out.print("<td>" + rs.getString(2) + "</td>");
					out.print("<td>" + rs.getString(3) + "</td>");
					out.print("</tr>");
				}
				out.print("</table>");

				out.println("<br><h2>");
				out.println("<a href=idea.jsp>返回</a>");
				out.println("</h2>");

				con.close();
			} catch (SQLException e) {
				out.print(e);
			}
		%>
	</div>
</body>
</html>