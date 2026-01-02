<%@ page import="java.util.List" %>
    <%@ page import="com.student.model.Student" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>All Students</title>
            </head>

            <body>
                <h2>Student List</h2>

                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Year</th>
                    </tr>
                    <% List<Student> list = (List<Student>) request.getAttribute("studentList");
                            if (list != null) {
                            for (Student s : list) {
                            %>
                            <tr>
                                <td>
                                    <%= s.getId() %>
                                </td>
                                <td>
                                    <%= s.getName() %>
                                </td>
                                <td>
                                    <%= s.getEmail() %>
                                </td>
                                <td>
                                    <%= s.getYear() %>
                                </td>
                            </tr>
                            <% } } %>
                </table>

                <p><a href="register.jsp">Register New Student</a></p>
            </body>

            </html>