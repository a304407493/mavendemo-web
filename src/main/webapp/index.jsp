<html>
<body>
<h2>Hello World!</h2>
<%
	String baseUrl = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
	out.println("获取baseUrl:"+baseUrl+"<br/>");//
	%>
	<%
	out.println("项目的使用和运行前配置：pom.xml和druid.properties配置文件的数据库相关配置pom.xml是用来创建数据库项目信息的【备注mysql会直接pom文件的sql创建数据库，如果是本地数据库无需修改配置druid.properties文件】<br/>");//
	%>
	<%
	out.println("项目的使用和运行方法：jetty:run 和 tomcat:run ；不要使用eclipse中的tomcat（7可能会有问题）；打包不要跳过maven的test阶段（绑定了sql初始化查看pom文件）；quartz的sql初始化只支持1.8版本的mysql版本缺失oracle<br/>");//
	%>
	<%
	out.println("项目的使用和运行方法：初始化sql配置在pom.xml和sql文件所在路径在src/test/resources/文件下的sql文件<br/>");//
	%>
	<a href="testDruid.jsp">测试Druid</a><br/>
	<a href="<%=baseUrl%>druid/login.html">druid的后台路径用户名和密码druid配置在web.xml和druid.xml</a><br/>
</body>
</html>
