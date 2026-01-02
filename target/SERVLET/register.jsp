<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Register Student</title>
        <link rel="stylesheet" href="css/style.css">
    </head>

    <body>
        <div class="container">
            <h2>Register Student</h2>

            <% String msg=(String) request.getAttribute("message"); if (msg !=null && !msg.isEmpty()) { %>
                <div class="message <%= msg.toLowerCase().contains(" error") ? "error" : "success" %>">
                    <%= msg %>
                </div>
                <% } %>

                    <form action="register" method="post">
                        <div class="form-group">
                            <label for="name">Full Name</label>
                            <input type="text" id="name" name="name" placeholder="Unknown Student" required>
                        </div>

                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" name="email" placeholder="student@university.edu" required>
                        </div>

                        <div class="form-group">
                            <label for="year">Year of Study</label>
                            <input type="number" id="year" name="year" min="1" max="6" placeholder="1" required>
                        </div>

                        <button type="submit">Register Student</button>
                    </form>

                    <div class="link-container">
                        <a href="show_all">View All Students</a>
                    </div>
        </div>
    </body>

    </html>