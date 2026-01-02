<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html>

    <head>
        <title>Register Student</title>
    </head>

    <body>
        <h2>Register Student</h2>

        <div style="color: red;">
            <% String msg=(String) request.getAttribute("message"); if (msg !=null) out.print(msg); %>
        </div>

        <form action="register" method="post">
            <p>Name: <input type="text" name="name" required></p>
            <p>Email: <input type="email" name="email" required></p>
            <p>Year: <input type="number" name="year" required></p>
            <button type="submit">Register</button>
        </form>

        <p><a href="show_all">View All Students</a></p>
    </body>

    </html>