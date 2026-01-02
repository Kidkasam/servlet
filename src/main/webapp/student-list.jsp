<%@ page import="java.util.List" %>
    <%@ page import="com.student.model.Student" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html>

            <head>
                <title>Student List</title>
                <style>
                    body {
                        font-family: sans-serif;
                        padding: 20px;
                    }

                    table {
                        width: 80%;
                        margin: 20px auto;
                        border-collapse: collapse;
                    }

                    th,
                    td {
                        border: 1px solid #ddd;
                        padding: 12px;
                        text-align: left;
                    }

                    th {
                        background-color: #f2f2f2;
                    }

                    h2 {
                        text-align: center;
                    }

                    .actions {
                        text-align: center;
                        margin-top: 20px;
                    }

                    .btn {
                        padding: 10px 20px;
                        background-color: #28a745;
                        color: white;
                        text-decoration: none;
                        border-radius: 4px;
                    }
                </style>
            </head>

            <body>
                <h2>Registered Students</h2>

                <div style="text-align: center; color: red;">
                    <% String error=(String) request.getAttribute("errorMessage"); if (error !=null) { out.print(error);
                        } %>
                </div>

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
                                        <td colspan="4" style="text-align: center;">No registered students found.</td>
                                    </tr>
                                    <% } %>
                    </tbody>
                </table>

                <div class="actions">
                    <a href="register.jsp" class="btn">Register New Student</a>
                </div>
            </body>

            </html>