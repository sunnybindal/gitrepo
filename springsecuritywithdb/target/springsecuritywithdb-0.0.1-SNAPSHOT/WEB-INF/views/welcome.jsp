<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloWorld page</title>
<style type="text/css">
	.ellipsis {
	white-space: nowrap;
	overflow: hidden;
}

.ellipsis.multiline {
	white-space: normal;
}
</style>
</head>
<body>Greeting : ${greeting}
	<div class="ellipsis" style="width: 100px; border: 1px solid black;">
		ThreadLocal variables are infamous for creating memory leaks. A memory leak in Java is amount of memory hold by object which are not in use and should have been garbage collected, but because of unintended strong references, they still live in Java heap space. There are many ways memory leak can be caused in Java but when this memory leak is caused due to ThreadLocal variable, it’s refereed as ThreadLocal memory leak. In our last post about ThreadLocal variable, we have seen How ThreadLocal variable can make SimpleDateFormat thread-safe and also raised point that in managed environment like J2EE application server or web server like Tomcat, Jetty, WebSphere or Weblogic use of

Read more: http://javarevisited.blogspot.com/2013/01/threadlocal-memory-leak-in-java-web.html#ixzz3k5XmQ700
		
	</div>
	<br>
	<div class="ellipsis multiline" style="width: 100px; height: 40px; border: 1px solid black; margin-bottom: 100px">
		 In web server and application server like Tomcat or WebLogic, web-app is loaded by a different ClassLoader than which is used by Server itself. This ClassLoader loads and unloads classes from web application. Web servers also maintains ThreadPool, which is collection of worker thread, to server HTTP requests. Now if one of the Servlet or any other Java class from web application creates a ThreadLocal variable during request processing and doesn't remove it after that, copy of that Object will remain with worker Thread and since life-span of worker Thread is more than web app itself, it will prevent the object and ClassLoader, which uploaded the web app, from being garbage collected. This will create a memory leak in Server. Now if you do this couple of time you may see java.lang.OutOfMemoryError: PermGen space . Now this brings an important question,  is it possible to to use ThreadLocal variable safely in a managed environment?  Answer is Yes,, but that requires a careful usage of ThreadLocal variable and making sure to remove the object from ThreadLocal once done.

Read more: http://javarevisited.blogspot.com/2013/01/threadlocal-memory-leak-in-java-web.html#ixzz3k5YaWNXJ
		
	</div>
</body>
</html>