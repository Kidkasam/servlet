# 🎓 Student Registration System

A simple, comprehensive Java Web Application for managing student registrations. Built with **Jakarta EE (Servlet API 5.0)**, **JSP**, **JDBC**, and **MySQL**.

## 🚀 Features
- **Register Students**: Simple form to add Name, Email, and Year.
- **View All Students**: Tabular view of all registered students (ID, Name, Email, Year).
- **Validation**: Prevents empty fields and duplicate email addresses.
- **MVC Architecture**: Clean separation of concerns (Model, View, Controller).

## 🛠️ Tech Stack
- **Java**: JDK 17+
- **Server**: Apache Tomcat 10+ (Jakarta EE compatible)
- **Database**: MySQL 8.x
- **Build Tool**: Apache Maven
- **Frontend**: JSP, HTML, CSS

---

## ⚙️ Prerequisites
Ensure you have the following installed:
1.  **JDK 17** or higher.
2.  **Apache Maven** (for building the project).
3.  **MySQL Server** (running locally).
4.  **Apache Tomcat 10+** (or any Jakarta EE 9/10 compliant server).

---

## 📥 Installation & Setup

### 1. Database Setup
1.  Open your MySQL client (Workbench or CLI).
2.  Execute the provided SQL script `database.sql` located in the project root.
    ```sql
    source database.sql;
    ```
    *This creates the `studentdb` database and the `students` table.*

### 2. Configuration
Open `src/main/java/com/student/util/DBConnection.java` and update your MySQL credentials if they differ from the defaults:
```java
private static final String URL = "jdbc:mysql://localhost:3306/studentdb";
private static final String USER = "root";      // Change if needed
private static final String PASSWORD = "root";  // Change if needed
```

### 3. Build the Project
Open a terminal in the project root (where `pom.xml` is) and run:
```bash
mvn clean package
```
*Successful build will generate `target/SERVLET.war`.*

### 4. Deploy to Tomcat
1.  Copy the generated `SERVLET.war` file from the `target/` directory.
2.  Paste it into the `webapps/` folder of your Tomcat installation.
3.  Start (or restart) the Tomcat server (`bin/startup.sh` or `bin/startup.bat`).

---

## 🖥️ Usage

Access the application in your browser:

**Home / Registration Page:**
> [http://localhost:8080/SERVLET/](http://localhost:8080/SERVLET/)

**View All Students:**
> [http://localhost:8080/SERVLET/show_all](http://localhost:8080/SERVLET/show_all)

---

## 📂 Project Structure
```
servlet/
├── src/main/java/com/student/
│   ├── controller/      # Servlets (Register, ShowAll)
│   ├── model/           # POJO (Student)
│   └── util/            # DB Connection Helper
├── src/main/webapp/
│   ├── WEB-INF/web.xml  # Deployment Descriptor
│   ├── register.jsp     # Registration View
│   ├── students.jsp     # List View
│   └── index.jsp        # Redirects to register
├── pom.xml              # Maven Dependencies
└── database.sql         # Database Schema
```
