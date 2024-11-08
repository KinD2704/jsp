<%@page import="Project.ConnectionProvider"  %>
<%@ page import="java.sql.*" %>
<%
    String rollNo = request.getParameter("rollNo");

    try {
        Connection con = ConnectionProvider.getCon();
        PreparedStatement ps = con.prepareStatement("DELETE FROM student WHERE rollNo=?");
        ps.setString(1, rollNo);
        ps.executeUpdate();
        response.sendRedirect("adminHome.jsp"); 
    } catch (Exception e) {
        e.printStackTrace();
    }
%>