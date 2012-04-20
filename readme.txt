
----------------项目构建----------------------
基于maven module 的项目构建
父项目为ishop，子项目util、model、dao、core、web
根据maven依赖的传递性，model依赖util、dao依赖model、core依赖dao、web依赖core

ishop                       pom
|
----ishop-util              jar
|
----ishop-model             jar
|
----ishop-dao               jar
|
----ishop-core              jar
|
----ishop-web               war


----------------打包与部署----------------------
在workspace/..../ishop 目录下执行以下命令
mvn clean install     会将util、model、dao、core打成jar包并放置到本地仓库
mvn package 会将war包打到ishop-web/../target目录



----------------目录结构----------------------
1. java项目(ishop-util、ishop-model、ishop-dao、ishop-core)
java根目录:	src/main/java
test根目录:	src/test/java

2. web项目(ishop-web)
java根目录:	src/main/java
web根目录:	src/main/webapp
资源根目录:	src/main/resources




----------------数据库连接----------------------
ishop-web/src/main/resources/spring/spring-config.xml配置了两种数据库连接方式
开发与测试可以试用jdbc datasource
生产与集成环境 请试用jndi连接池 , 连接池在../tomcat**/conf/context.xml中配置
<同时只能试用一种>



----------------开发环境配置----------------------
私有远程仓库地址 http://maven.591smt.com/content/groups/public
ps：鉴于私有仓库并不包含maven所需的插件，所以同时请配置mavan中央仓库

tomcat热部署： 设置ishop-web项目的output目录为ishop-web/src/main/webapp/WEB-INF/classes
设置方法ishop-web  --> properties -->Java Build Path -->Default output Folder

统一设置项目编码为UTF-8




----------------Version----------------------
当前版本： 1.0.0
author：许小龙

