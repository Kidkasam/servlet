Student Registration App (Tomcat 10 / Jakarta EE)
===================================================

Structure:
----------
servlet/
├── pom.xml
├── database.sql
└── src/
    └── main/
        ├── java/
        │   └── com/
        │       └── student/
        │           ├── model/
        │           │   └── Student.java
        │           ├── servlet/
        │           │   ├── RegisterServlet.java
        │           │   └── ShowAllStudentsServlet.java
        │           └── util/
        │               └── DBConnection.java
        └── webapp/
            ├── index.jsp
            ├── register.jsp
            ├── students.jsp
            └── WEB-INF/
                └── web.xml

Setup:
------
1. Create MySQL Database 'studentdb' using `database.sql`.
2. Update `DBConnection.java` with your MySQL user/password.
3. Build with Maven: `mvn clean package`.
4. Deploy `target/SERVLET.war` to Tomcat 10+.
