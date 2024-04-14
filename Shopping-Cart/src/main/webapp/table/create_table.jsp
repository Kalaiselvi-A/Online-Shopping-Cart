<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement smt = con.createStatement();
	String query = "Create table users(name varchar(100), email varchar(100)primary key, mobilenumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
	String query2 = "create table product(id int,name varchar(500), category varchar(200), price int, active varchar(10))";
	System.out.print(query);
	System.out.print(query2);
	//smt.execute(query);
	smt.execute(query2);
	System.out.print("Table Created");
	con.close();
}catch(Exception e){
	System.out.print(e);
}
%>