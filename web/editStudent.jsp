<%@page import="Project.ConnectionProvider"  %>
<%@ page import="java.sql.*" %>
<%
    String rollNo = request.getParameter("rollNo");
    String course = "", branch = "", name = "", fatherName = "", gender = "";

    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("SELECT * FROM student WHERE rollNo = ?");
        ps.setString(1, rollNo);
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            course = rs.getString("course");
            branch = rs.getString("branch");
            name = rs.getString("name");
            fatherName = rs.getString("fatherName");
            gender = rs.getString("gender");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Student Info</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2 class="my-4">Edit Student Info for Roll No: <%= rollNo %></h2>
        <form action="updateStudent.jsp" method="post">
            <input type="hidden" name="rollNo" value="<%= rollNo %>">
            <div class="form-group">
                <label for="course">Course Name</label>
                <input type="text" class="form-control" id="course" name="course" value="<%= course %>" required>
            </div>
            <div class="form-group">
                <label for="branch">Branch Name</label>
                 <select class="form-control" name="branch">
                    <option value="Foreign Language">Foreign Language</option>
                    <option value="pedagogy">Pedagogy</option>
                    <option value="economic and urban">Economic And Urban</option> 
                    <option value="natural science and technology">Natural Science And Technology</option>
                </select>
            </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="<%= name %>" required>
            </div>
            <div class="form-group">
                <label for="fatherName">Father's Name</label>
                <input type="text" class="form-control" id="fatherName" name="fatherName" value="<%= fatherName %>" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender</label>
                <input type="text" class="form-control" id="gender" name="gender" value="<%= gender %>" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</body>
</html>