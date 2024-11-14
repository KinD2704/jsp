<%@ page import="java.sql.*, Project.ConnectionProvider" %>
<%
    String rollNo = request.getParameter("rollNo"); 
    Connection con = null;
    PreparedStatement pst = null;
    try {
        con = ConnectionProvider.getCon();
        String query = "DELETE FROM result WHERE rollNo=?";
        pst = con.prepareStatement(query);
        pst.setString(1, rollNo);  
        int rowsAffected = pst.executeUpdate();
        if (rowsAffected > 0) {
            response.sendRedirect("adminHome.jsp?msg=Result deleted successfully"); 
        } else {
            response.sendRedirect("adminHome.jsp?msg=Error deleting result");  
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("adminHome.jsp?msg=Error occurred during delete");
    } finally {
        try {
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>