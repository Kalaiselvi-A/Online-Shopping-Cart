<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newPassword=request.getParameter("newPassword");

int check=0;
try{
	Connection con=ConnectionProvider.getCon();
	Statement smt=con.createStatement();
	ResultSet rs=smt.executeQuery("select * from users where email = '"+email+"' and mobileNumber = '"+mobileNumber+"' and securityQuestion= '"+securityQuestion+"' and answer = '"+answer+"'");
	while(rs.next()){
		check=1;
		smt.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
		response.sendRedirect("forgotPassword.jsp?msg=done");
	}
	if(check==0)
		response.sendRedirect("forgotPassword.jsp?msg=invalid");

}catch(Exception e){
	System.out.println(e);
	//response.sendRedirect("forgotPassword.jsp?msg=invalid");
}
%>