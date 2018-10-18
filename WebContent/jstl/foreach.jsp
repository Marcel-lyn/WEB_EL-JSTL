
<%@page import="java.util.*" %>
<%@page import="com.luoExpress.domain.User"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
List<String> strList = new ArrayList<String>();
strList.add("dal");
strList.add("david");
strList.add("baylor0");
strList.add("okan");
request.setAttribute("strList", strList);

List<User> userList = new ArrayList<User>();
User user1 = new User();
user1.setId(2);
user1.setName("lisi");
user1.setPassword("122");
userList.add(user1);
application.setAttribute("userList", userList);

Map<String,String> strMap = new HashMap<String,String>();
strMap.put("name","lucy");
strMap.put("age","180");
session.setAttribute("strMap", strMap);

Map<String,User>userMap = new HashMap<String,User>();
userMap.put("user1",user1);

request.setAttribute("userMap", userMap);

%>

<c:forEach items ="${strList }" var="str">
${str}<br/>
</c:forEach>

<c:forEach items="${userList }" var="user">
     ${user.name }----${user.password}<br/>
     </c:forEach>
     
     
     <c:forEach items="${strMap }" var="entry">
     ${entry.key }:${entry.value }<br>
     </c:forEach>
     
     <c:forEach items="${userMap }" var="entry">
     ${entry.key }:${entry.value.name }---{entry.value.passwrod}<br/>
     </c:forEach>
</body>
</html>