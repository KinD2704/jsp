<%@ page import="java.sql.*, Project.ConnectionProvider" %>
<%
    String rollNo = request.getParameter("rollNo");  // L?y tham s? rollNo t? URL
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;
    String query = "SELECT * FROM result WHERE rollNo=?";
    String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "", s6 = "", s7 = "", s8 = "";
    
    try {
        con = ConnectionProvider.getCon();
        pst = con.prepareStatement(query);
        pst.setString(1, rollNo);  // L?y k?t qu? theo rollNo
        rs = pst.executeQuery();
        
        if (rs.next()) {
            s1 = rs.getString(2);  // Engg. Physics-I
            s2 = rs.getString(3);  // Engg. Chemistry
            s3 = rs.getString(4);  // Engg. Mathematics-I
            s4 = rs.getString(5);  // Basic Electrical Engg
            s5 = rs.getString(6);  // Electronic Engg.
            s6 = rs.getString(7);  // Engg. Chemistry Lab
            s7 = rs.getString(8);  // Engg. Physics Lab
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Student Result</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h2>Edit Result for Roll No: <%= rollNo %></h2>
        <form action="updateResult.jsp" method="post">
            <input type="hidden" name="rollNo" value="<%= rollNo %>">
            <div class="form-group">
                <label for="s1">Engg. Physics-I</label>
                <input type="text" class="form-control" name="s1" value="<%= s1 %>" required>
            </div>
            <div class="form-group">
                <label for="s2">Engg. Chemistry</label>
                <input type="text" class="form-control" name="s2" value="<%= s2 %>" required>
            </div>
            <div class="form-group">
                <label for="s3">Engg. Mathematics-I</label>
                <input type="text" class="form-control" name="s3" value="<%= s3 %>" required>
            </div>
            <div class="form-group">
                <label for="s4">Basic Electrical Engg</label>
                <input type="text" class="form-control" name="s4" value="<%= s4 %>" required>
            </div>
            <div class="form-group">
                <label for="s5">Electronic Engg.</label>
                <input type="text" class="form-control" name="s5" value="<%= s5 %>" required>
            </div>
            <div class="form-group">
                <label for="s6">Engg. Chemistry Lab</label>
                <input type="text" class="form-control" name="s6" value="<%= s6 %>" required>
            </div>
            <div class="form-group">
                <label for="s7">Engg. Physics Lab</label>
                <input type="text" class="form-control" name="s7" value="<%= s7 %>" required>
            </div>
            <button type="submit" class="btn btn-primary">Update Result</button>
        </form>
    </div>
</body>
</html>