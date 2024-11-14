<%@ page import="java.sql.*, Project.ConnectionProvider" %>
<%
    String rollNo = request.getParameter("rollNo");
    String s1 = request.getParameter("s1");
    String s2 = request.getParameter("s2");
    String s3 = request.getParameter("s3");
    String s4 = request.getParameter("s4");
    String s5 = request.getParameter("s5");
    String s6 = request.getParameter("s6");
    String s7 = request.getParameter("s7");
    
    Connection con = null;
    PreparedStatement pst = null;
    
    try {
        con = ConnectionProvider.getCon();
        String query = "UPDATE result SET s1=?, s2=?, s3=?, s4=?, s5=?, s6=?, s7=? WHERE rollNo=?";
        pst = con.prepareStatement(query);
        pst.setString(1, s1);
        pst.setString(2, s2);
        pst.setString(3, s3);
        pst.setString(4, s4);
        pst.setString(5, s5);
        pst.setString(6, s6);
        pst.setString(7, s7);
        pst.setString(8, rollNo);

        int rowsAffected = pst.executeUpdate();
        if (rowsAffected > 0) {
            response.sendRedirect("adminHome.jsp?msg=Result updated successfully"); // Quay l?i trang qu?n lý v?i thông báo thành công
        } else {
            response.sendRedirect("adminHome.jsp?msg=Error updating result");  // Thông báo l?i
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("adminHome.jsp?msg=Error occurred during update");
    } finally {
        try {
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>