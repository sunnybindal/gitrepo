<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloWorld page</title>
</head>
<body>Greeting : ${greeting} 
	<div>
		ThreadLocal variables are infamous for creating memory leaks. A memory leak in Java is amount of memory hold by object which are not in use and should have been garbage collected, but because of unintended strong references, they still live in Java heap space. There are many ways memory leak can be caused in Java but when this memory leak is caused due to ThreadLocal variable, it’s refereed as ThreadLocal memory leak. In our last post about ThreadLocal variable, we have seen How ThreadLocal variable can make SimpleDateFormat thread-safe and also raised point that in managed environment like J2EE application server or web server like Tomcat, Jetty, WebSphere or Weblogic use of

Read more: http://javarevisited.blogspot.com/2013/01/threadlocal-memory-leak-in-java-web.html#ixzz3k5XmQ700
		
	</div>
</body>
</html>