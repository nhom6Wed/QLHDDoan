<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("psw");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quanlydoan",
            "root", "Qu@n0310");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where username='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        System.out.print(userid);
        if(userid.trim() == "DoanKhoa")
            response.sendRedirect("doankhoadanhsachhoatdong");
           else if(userid == "DoanTruong") 
            response.sendRedirect("danhsachchidoan");
           else if(userid == "Admin")
            response.sendRedirect("danhsachdoanvien");
           else
            response.sendRedirect("TrangChu.jsp");
    } else {
        out.println("Invalid password <a href='TrangChu.jsp'>try again</a>");
    }
%>