# Hold health website

## Website Access

Online Demo:Online access:http://pleasegivemehighmark.jellon.top:8080/Assignment/homepage.html <br>
Local debug:Follow the step at "Quick start" below.

## Simply description

This the project of one of our course-SWE306
We build the website regarding the topic of "Health".
The main propose of this website is to inspire people into doing exercise & keeping health
.<br>You may access by the link of the website.

## What we already got?

✅ User Log-in & Log-out<br>
✅ User registration-auth by email & dynamic code<br>
✅ Workout video remoondation <br>
✅ Article showcase<br>
✅ Online Shop with virtual buying process<br>
✅ Waiting you to discover......

## Framework Details

### front-end:

* Bootstrap 5
* Jsp

### back-end:

* DB: Mybatis
* Redis: Jedis
* Server: Tomcat 10

## What you need to get start?

* MySQL
* Redis
* Windows
* Linux Server(Optional)

## Quick start

### Step 0:install the software-requirement

* IDEA
* Tomcat
* Maven  (can be IDEA embed)
* Mysql  (optional if have remote server)
* Redis  (optional if have remote server)

### Step 1: config the mybatis setting

File location:src/main/resources/mybatis-config.xml<br>
Replace the fields in file

```xml
<property name="url" value="jdbc:mysql://MySQL_Address:3306/DB_Name?useUnicode=true&amp;characterEncoding=utf-8&amp;useSSL=false"/>
<property name="username" value="Your_username"/>
<property name="password" value="Your_Password"/>
```

### Step 2:config the jedis setting

File location:src/main/java/com/redis/RedisOps.java
Replace the fields in file

```java
//line 10
public RedisOps(){
    String address="Your_Redis_Adress";
    passwd="Your_Redis_Password";
    //       
}
```

### Step 3:Maven run

Run the maven in IDEA to build the dependencies chain

### Step 4:Build and run

Run the project in IDEA and enjoy

## Project status:<br>

* April 2022-July 2022: Quick-Developing
* July 2022-current: LTS

## Bug fix

if any bug discovered,Pls contact the author by: CME1909120@xmu.edu.my