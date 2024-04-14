<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
try{
	Connection con = ConnectionProvider.getCon();
	Statement smt = con.createStatement();
	String query = "Create table users(name varchar(100), email varchar(100)primary key, mobilenumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
	String query2 = "create table product(id int,name varchar(500), category varchar(200), price int, active varchar(10))";
	String query3 = "create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
	System.out.print(query);
	System.out.print(query2);
	System.out.println(query3);
	//smt.execute(query);
	//smt.execute(query2);
	smt.execute(query3);
	System.out.print("Table Created");
	con.close();
}catch(Exception e){
	System.out.print(e);
}
%>