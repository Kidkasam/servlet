<%@ page import="java.util.List" %>
    <%@ page import="com.student.model.Student" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>All Students</title>
                <link rel="stylesheet" href="css/style.css">
            </head>

            <body>
                <div class="container wide">
                    <h2>Student List</h2>

                    <% String msg=(String) request.getAttribute("message"); if (msg !=null && !msg.isEmpty()) { %>
                        <div class="message error">
                            <%= msg %>
                        </div>
                        <% } %>

                            <table>
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Email</th>
                                        <th>Year</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% List<Student> list = (List<Student>) request.getAttribute("studentList");
                                            if (list != null && !list.isEmpty()) {
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
                                            <% } } else { %>
                                                <tr>
                                                    <td colspan="4" style="text-align: center; color: #64748b;">No
                                                        students found in database.</td>
                                                </tr>
                                                <% } %>
                                </tbody>
                            </table>

                            <div class="link-container">
                                <a href="register.jsp">&larr; Register New Student</a>
                            </div>
                </div>
            </body>

            </html>