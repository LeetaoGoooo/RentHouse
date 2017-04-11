### 基于SSH框架的系统
文件目录结构如下
```
├─.settings
├─build
│  └─classes
│      └─com
│          ├─dao
│          │  └─impl
│          ├─entity
│          └─struts
│              └─action
├─src
│  └─com
│      ├─dao
│      │  └─impl
│      ├─entity
│      └─struts
│          └─action
└─WebContent
    ├─META-INF
    ├─WEB-INF
    │  └─lib
    └─webapp
```
其中webapp是jsp页面
web.xml位于WEB-INF下。其中主要是关于structs2和Spring3(通过加载appliactionContext.xml)的配置
appliactionContext.xml位于WEB-INF下，主要配置Spring3,其中
使用数据库名称为renthouse
依赖注入有两种方式:设置注入和构造注入
本系统采用前者
structs.xml位于src文件夹下

关于各个package的说明
com.dao 定义抽象接口
com.dao.impl 继承并实现接口
关于数据库的持久化，通过Session去完成，由于使用的hibernate4,hibernate3中的HibernateTemplate在hibernate4中Spring不在提供Template改用Hibernate的原生Session.
com.entity 实体类
com.structs.action 各种Action,需要在structs.xml配置

###一些问题
1.资料显示appliactionContext.xml可以不放在WEB-INF目录下，将
Web.xml文件中
```xml
<context-param>
    <param-name>contextConfigLoaction</param-name>
    <param-value>/WEB-INF/applicationContext.xml</param-value>
</context-param>
```
<param-value></param-value>内容改为classpath:appliactionContext.xml
实际的时候，将文件修改后，移动appliactionContext.xml文件导致加载出错

2.在hibernate中使用原生的sql语句的时候应当使用createSQLQuery(),并且createSQLQuery()用法与createQuery()用法有很大区别
其中关于createSQLQuery
```java
String sql = "sql语句";
Session session = this.getSession();
try {
List xxxList = session.createSQLQuery(sql).addEntity(xxx.class).list();
return xxxList ;
}...
```

3.在hibernate中使用连接查询的时候
类似下面语句
```sql
select a.id as id,a.comID as comID,a.renttype as renttype,a.address as address,a.city as city,a.ask as ask,a.publictime as publictime,a.floor as floor,a.allfloor as allfloor,a.size as size,a.type as type,a.price as price,a.face as face,a.orderway as orderway,a.visit as visit,a.buju as buju,a.decoration as decoration,a.title as title,a.content as content,a.age as age,a.verify as verify from house as a inner join com as b on a.comID = b.id and b.study = 1 order by a.visit desc
```
需要将所有的列名枚举出来，不然会出错

4.关于在Action中的set和get方法，对于不同的表存在相同的列名，set和get方法也只需要使用一次

5.如果初始化的时候，主页需要执行相应action，可以添加一个跳转页面，执行相应请求，然后跳转到主页
代码类似
```java
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
  request.getRequestDispatcher("houseAction!getAllTopFiveByVisit").forward(request, response);
%>
```

### 关于写法
先在com.dao定义抽象类，
然后再com.dao.impl实现抽象类方法
需要在appliactionContext.xml中加入注解
```xml
    <bean id="userDao" class="com.dao.impl.UserDaoImpl">
        <property name="sessionFactory" ref="sessionFactory"/>
    </bean>
    <bean id="loginAction" class="com.struts.action.LoginServiceAction" scope="prototype">
         <property name="userDao" ref="userDao"></property>
    </bean>
```
然后在com.action中定义相应的Action
Action需要在struts.xml中配置,在package中添加
```xml
            <action name="loginAction" class="com.struts.action.LoginServiceAction">
                 <result name="success">/webapp/loginsuccess.jsp</result>
                 <result name="input">/webapp/login.jsp</result>
            </action>
```

### 数据库修改
question表
    添加新字段title
    修改content：由MEDIUMTEXT=>TEXT
    删除state字段
    修改type：由VARCHAR=>TINYINT,0代表常见问题，1代表装修设计，2房屋风水，3商业地产，4法律法规，5其他
    拟修改publictime=>createtime
修改com.entity.Question.java


###hbm.xml文件修改
question.hbm.xml


###com.entity.*文件修改
增加新字段 title



### struts标签的使用
```
第一个例子
List<AttrName> attrN {color,size,style}
List<AttrValue> attrV {red,20,gay}
这2个list的元素是一一对应的，一个attrN对应一个attrV
<s:iterator value="%{attrN }" id="id"   status="status">
index    is : <s:property value='status.index'/>
attrName is : <s:property value='id'/> or <s:property value='%{id}'/>
attrName is : <s:property value='%{attrV[#status.index]}'/>
  
第二个例子
<s:iterator value="data.datas" var="student" status="st">
 <tr align="center">
  <td>
   <s:property value="#student.id" />
  </td>
  <td>
   <s:property value="#student.name" />
  </td>
  <td>
   <s:date value="#student.birth" fomart="yyyy/MM/dd hh:mm:ss"/>
  </td>
  <td>
   <s:date value="classlist[#st.index].classname"/>
  </td>
 </tr>
</s:iterator>
</s:iterator>
```

### 中文乱码问题
出现过form表单提交中文数据乱码问题，发现将应该是由*提交方式(method='post')*未设置导致

### bug
修复已知所有bug

### 待完成
用户浏览历史
图片上传
管理员审核房屋



