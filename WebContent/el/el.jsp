<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.luoExpress.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
pageContext.setAttribute("company", "luoexperess2");
request.setAttribute("company", "luoexperss");

User user = new User();
user.setId(1);
user.setName("zhang");
user.setPassword("123");
session.setAttribute("user", user);

List<User>	list = new ArrayList<User>();
User user1 = new User();
user1.setId(2);
user1.setName("lisi");
user1.setPassword("122");
list.add(user1);
application.setAttribute("list", list);

%>
<%=request.getAttribute("company") %>



${ reqestScope.company}
${sessionScope.user.name }
${application.list[1].name}

${ company}
${ user.name}
</body>
</html>