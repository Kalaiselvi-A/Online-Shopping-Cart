<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement smt = con.createStatement();
	String query = "Create table users(name varchar(100), email varchar(100)primary key, mobilenumber bigint, sequrityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
	System.out.print(query);
	smt.execute(query);
	System.out.print("Table Created");
	con.close();
}catch(Exception e){
	
}
%>