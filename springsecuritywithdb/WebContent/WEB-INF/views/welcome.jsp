<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloWorld page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js" type="text/javascript" ></script>
<script src="resources/js/jquery.dotdotdot.js" type="text/javascript" ></script>
</head>
<body>Greeting : ${greeting}
<div>
	Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Server version:        Apache Tomcat/7.0.62
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Server built:          May 7 2015 17:14:55 UTC
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Server number:         7.0.62.0
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: OS Name:               Windows 8
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: OS Version:            6.2
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Architecture:          amd64
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Java Home:             C:\Program Files\Java\jdk1.6.0_45\jre
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM Version:           1.6.0_45-b06
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: JVM Vendor:            Sun Microsystems Inc.
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_BASE:         D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: CATALINA_HOME:         D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -agentlib:jdwp=transport=dt_socket,suspend=y,address=localhost:55985
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Dcatalina.home=D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.endorsed.dirs=D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\endorsed
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Dcatalina.base=D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.io.tmpdir=D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\temp
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.util.logging.config.file=D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\conf\logging.properties
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.VersionLoggerListener log
INFO: Command line argument: -Dfile.encoding=Cp1252
Aug 28, 2015 6:02:28 PM org.apache.catalina.core.AprLifecycleListener lifecycleEvent
INFO: The APR based Apache Tomcat Native library which allows optimal performance in production environments was not found on the java.library.path: C:\Program Files\Java\jdk1.6.0_45\bin;C:\Windows\Sun\Java\bin;C:\Windows\system32;C:\Windows;C:\Program Files\Java\jdk1.6.0_45\jre\bin;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files (x86)\Windows Live\Shared;C:\Program Files (x86)\Java\jdk1.6.0_20\bin;D:\Programs\apache-maven-3.2.5\bin;D:\Programs\apache-ant-1.9.4-bin\apache-ant-1.9.4\bin;C:\Program Files (x86)\Skype\Phone\;C:\Program Files\TortoiseSVN\bin;C:\Program Files (x86)\WinMerge;C:\Program Files (x86)\MySQL\MySQL Utilities\;C:\Program Files (x86)\MySQL\MySQL Utilities\Doctrine extensions for PHP\;.
Aug 28, 2015 6:02:28 PM org.apache.coyote.AbstractProtocol init
INFO: Initializing ProtocolHandler ["http-bio-8080"]
Aug 28, 2015 6:02:28 PM org.apache.coyote.AbstractProtocol init
INFO: Initializing ProtocolHandler ["ajp-bio-8009"]
Aug 28, 2015 6:02:28 PM org.apache.catalina.startup.Catalina load
INFO: Initialization processed in 765 ms
Aug 28, 2015 6:02:29 PM org.apache.catalina.core.StandardService startInternal
INFO: Starting service Catalina
Aug 28, 2015 6:02:29 PM org.apache.catalina.core.StandardEngine startInternal
INFO: Starting Servlet Engine: Apache Tomcat/7.0.62
Aug 28, 2015 6:02:29 PM org.apache.catalina.startup.HostConfig deployDescriptor
INFO: Deploying configuration descriptor D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\conf\Catalina\localhost\forum.xml
Aug 28, 2015 6:02:31 PM org.apache.catalina.startup.TldConfig execute
INFO: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
Aug 28, 2015 6:02:31 PM org.apache.tomcat.websocket.server.WsSci onStartup
INFO: JSR 356 WebSocket (Java WebSocket 1.1) support is not available when running on Java 6. To suppress this message, run Tomcat on Java 7, remove the WebSocket JARs from $CATALINA_HOME/lib or add the WebSocket JARs to the tomcat.util.scan.DefaultJarScanner.jarsToSkip property in $CATALINA_BASE/conf/catalina.properties. Note that the deprecated Tomcat 7 WebSocket API will be available. 
SLF4J: Failed to load class "org.slf4j.impl.StaticLoggerBinder".
SLF4J: Defaulting to no-operation (NOP) logger implementation
SLF4J: See http://www.slf4j.org/codes.html#StaticLoggerBinder for further details.
Aug 28, 2015 6:02:33 PM org.hibernate.annotations.common.Version <clinit>
INFO: HCANN000001: Hibernate Commons Annotations {4.0.1.Final}
Aug 28, 2015 6:02:33 PM org.hibernate.Version logVersion
INFO: HHH000412: Hibernate Core {4.2.1.Final}
Aug 28, 2015 6:02:33 PM org.hibernate.cfg.Environment <clinit>
INFO: HHH000206: hibernate.properties not found
Aug 28, 2015 6:02:33 PM org.hibernate.cfg.Environment buildBytecodeProvider
INFO: HHH000021: Bytecode provider name : javassist
Aug 28, 2015 6:02:33 PM org.hibernate.ejb.Ejb3Configuration configure
INFO: HHH000204: Processing PersistenceUnitInfo [
	name: default
	...]
Aug 28, 2015 6:02:33 PM org.hibernate.service.jdbc.connections.internal.ConnectionProviderInitiator instantiateExplicitConnectionProvider
INFO: HHH000130: Instantiating explicit connection provider: org.hibernate.ejb.connection.InjectedDataSourceConnectionProvider
Aug 28, 2015 6:02:33 PM org.hibernate.dialect.Dialect <init>
INFO: HHH000400: Using dialect: org.hibernate.dialect.MySQL5Dialect
Aug 28, 2015 6:02:33 PM org.hibernate.engine.transaction.internal.TransactionFactoryInitiator initiateService
INFO: HHH000268: Transaction strategy: org.hibernate.engine.transaction.internal.jdbc.JdbcTransactionFactory
Aug 28, 2015 6:02:33 PM org.hibernate.hql.internal.ast.ASTQueryTranslatorFactory <init>
INFO: HHH000397: Using ASTQueryTranslatorFactory
Aug 28, 2015 6:02:33 PM org.hibernate.validator.internal.util.Version <clinit>
INFO: HV000001: Hibernate Validator 4.3.0.Final
Aug 28, 2015 6:02:35 PM org.apache.catalina.startup.HostConfig deployDescriptor
INFO: Deployment of configuration descriptor D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\conf\Catalina\localhost\forum.xml has finished in 6,891 ms
Aug 28, 2015 6:02:35 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deploying web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\docs
Aug 28, 2015 6:02:35 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deployment of web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\docs has finished in 65 ms
Aug 28, 2015 6:02:35 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deploying web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\examples
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deployment of web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\examples has finished in 307 ms
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deploying web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\host-manager
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deployment of web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\host-manager has finished in 61 ms
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deploying web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\manager
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deployment of web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\manager has finished in 80 ms
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deploying web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\ROOT
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.HostConfig deployDirectory
INFO: Deployment of web application directory D:\sunny\MyForum\apache-tomcat-7.0.62-windows-x64\apache-tomcat-7.0.62\webapps\ROOT has finished in 65 ms
Aug 28, 2015 6:02:36 PM org.apache.coyote.AbstractProtocol start
INFO: Starting ProtocolHandler ["http-bio-8080"]
Aug 28, 2015 6:02:36 PM org.apache.coyote.AbstractProtocol start
INFO: Starting ProtocolHandler ["ajp-bio-8009"]
Aug 28, 2015 6:02:36 PM org.apache.catalina.startup.Catalina start
INFO: Server startup in 7550 ms
Aug 28, 2015 6:02:42 PM org.apache.jasper.compiler.TldLocationsCache tldScanJar
INFO: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
	
</div>
</body>
</html>