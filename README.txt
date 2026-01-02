================================================================================
 Student Registration Web Application (Maven Project)
================================================================================

This project is a simple Java Servlet application managed by Apache Maven.
It implementation MVC architecture with JSP, Servlets, and JDBC.

PROJECT SPECIFICATIONS
----------------------
- **Context Root**: SERVLET (The URL will be http://localhost:8080/SERVLET/)
- **Java Version**: 17
- **Database**: MySQL

PREREQUISITES
-------------
1. JDK 17 (or compatible 11+)
2. Apache Maven
3. Apache Tomcat 9 or 10
4. MySQL Server

SETUP STEPS
-----------

1. DATABASE
   - Open MySQL Workbench or Command Prompt.
   - Run the script `database.sql` found in the project root:
     
     CREATE DATABASE student_db;
     USE student_db;
     CREATE TABLE students (...);

   - IMPORTANT: Check `src/main/java/com/student/util/DBConnection.java`.
     Ensure `USER` and `PASSWORD` match your local MySQL credentials.

2. BUILD
   - Open a terminal in this folder (where pom.xml is located).
   - Run:
     
     mvn clean package

   - This creates a file `SERVLET.war` in the `target/` directory.

3. DEPLOY
   - Copy `target/SERVLET.war` to your Tomcat's `webapps` folder.
   - Start Tomcat.

4. RUN
   - Open Browser: http://localhost:8080/SERVLET/
   - This should load the Registration Page (`index.jsp` redirects to `register.jsp`).

FILE STRUCTURE
--------------
src/main/java/com/student/
    controller/       -> RegisterServlet.java, ShowAllStudentsServlet.java
    model/            -> Student.java
    util/             -> DBConnection.java
src/main/webapp/      -> register.jsp, student-list.jsp, index.jsp, WEB-INF/
pom.xml               -> Maven dependencies and build config
database.sql          -> SQL schema
================================================================================
