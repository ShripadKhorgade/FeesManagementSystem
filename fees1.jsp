<html>
<body bgcolor="cyan">
<%@ page language="java" import="java.sql.*"%>
<%
String B1=request.getParameter("B1");
Connection con=null;
Statement st=null;
if(B1.equals("Insert"))
{
try
{

String doa=request.getParameter("doa");
String fname=request.getParameter("fname");
String enroll=request.getParameter("enroll");
String tfees=request.getParameter("tfees");
String pfees=request.getParameter("pfees");
String rfees=request.getParameter("rfees");


// Load the Oracle JDBC driver
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// Establish a connection
con = DriverManager.getConnection("jdbc:odbc:shree");
//3
st=con.createStatement();

String s="insert into shree values('"+doa+"','"+fname+"','"+enroll+"','"+tfees+"','"+pfees+"','"+rfees+"')";
int x=st.executeUpdate(s);

out.println("<h1>");
out.println("Record is inserted successfully!");
out.println("</h1>");

st.close();
con.close();
}


catch(Exception e)
{
}
}

else if(B1.equals("Update"))
{
try
{
String doa=request.getParameter("doa");
String fname=request.getParameter("fname");
String enroll=request.getParameter("enroll");
String tfees=request.getParameter("tfees");
String pfees=request.getParameter("pfees");
String rfees=request.getParameter("rfees");



//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:shree");

//3
st=con.createStatement();

//4
String s="update shree set rfees='"+rfees+"' where enroll='"+enroll+"'";
int x=st.executeUpdate(s);


out.println("<h1>");
out.println("Record is updated successfully!");
out.println("</h1>");
//5
st.close();
con.close();
}

catch(Exception e)
{
}
}
else if(B1.equals("Delete"))
{
try
{

String doa=request.getParameter("doa");
String fname=request.getParameter("fname");
String enroll=request.getParameter("enroll");
String tfees=request.getParameter("tfees");
String pfees=request.getParameter("pfees");
String rfees=request.getParameter("rfees");

//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:shree");

//3
st=con.createStatement();

//4
String s="delete from shree where enroll='"+enroll+"'";
int x=st.executeUpdate(s);


out.println("<h1>");
out.println("Record is deleted successfully!");
out.println("</h1>");
//5
st.close();
con.close();
}

catch(Exception e)
{
}
}


else if(B1.equals("Search"))
{


try
{


String doa=request.getParameter("doa");
String fname=request.getParameter("fname");
String enroll=request.getParameter("enroll");
String tfees=request.getParameter("tfees");
String pfees=request.getParameter("pfees");
String rfees=request.getParameter("rfees");

//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:shree");

//3
st=con.createStatement();

//4
String s="select * from shree where enroll='"+enroll+"'";
ResultSet rs=st.executeQuery(s);

out.println("<table border=1>");
out.println("<tr>");
out.println("<td><font size=+2>Date of Admission</font></td>");
out.println("<td><font size=+2>Full Name</font></td>");
out.println("<td><font size=+2>Enrollment No.</font></td>");
out.println("<td><font size=+2>Total Fees</font></td>");
out.println("<td><font size=+2>Paid Fees</font></td>");
out.println("<td><font size=+2>Remaining Fees</font></td>");
while(rs.next())
{
String doa1=rs.getString(1);
String fname1=rs.getString(2);
String enroll1=rs.getString(3);
String tfees1=rs.getString(4);
String pfees1=rs.getString(5);
String rfees1=rs.getString(6);

out.println("<h1>");
out.println("<tr>");
out.println("<td><font size=+2>");
out.println(doa1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(fname1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(enroll1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(tfees1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(pfees1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(rfees1);
out.println("</font></td>");
out.println("</h1>");


}
//5
st.close();
con.close();
}
catch(Exception e)
{
}
}

else if(B1.equals("Display All"))
{
try
{

String doa=request.getParameter("doa");
String fname=request.getParameter("fname");
String enroll=request.getParameter("enroll");
String tfees=request.getParameter("tfees");
String pfees=request.getParameter("pfees");
String rfees=request.getParameter("rfees");


//1
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");

//2
con=DriverManager.getConnection("jdbc:odbc:shree");

//3
st=con.createStatement();

//4
String s="select * from shree";
ResultSet rs=st.executeQuery(s);

out.println("<table border=1>");
out.println("<tr>");
out.println("<td><font size=+2>Date of Admission</font></td>");
out.println("<td><font size=+2>Full Name</font></td>");
out.println("<td><font size=+2>Enrollment No.</font></td>");
out.println("<td><font size=+2>Total Fees</font></td>");
out.println("<td><font size=+2>Paid Fees</font></td>");
out.println("<td><font size=+2>Remaining Fees</font></td>");
while(rs.next())
{
String doa1=rs.getString(1);
String fname1=rs.getString(2);
String enroll1=rs.getString(3);
String tfees1=rs.getString(4);
String pfees1=rs.getString(5);
String rfees1=rs.getString(6);

out.println("<h1>");
out.println("<tr>");
out.println("<td><font size=+2>");
out.println(doa1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(fname1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(enroll1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(tfees1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(pfees1);
out.println("</font></td>");


out.println("<td><font size=+2>");
out.println(rfees1);
out.println("</font></td>");
out.println("</h1>");


}


//5
st.close();
con.close();
}

catch(Exception e)
{
}
}





%>
