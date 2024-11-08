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

<form action="updateStudent.jsp" method="post">
    <input type="hidden" name="rollNo" value="<%=rollNo%>">
    Course Name: <input type="text" name="course" value="<%=course%>"><br>
    Branch Name: <input type="text" name="branch" value="<%=branch%>"><br>
    Name: <input type="text" name="name" value="<%=name%>"><br>
    Father Name: <input type="text" name="fatherName" value="<%=fatherName%>"><br>
    Gender: <input type="text" name="gender" value="<%=gender%>"><br>
    <button type="submit">Update</button>
</form>