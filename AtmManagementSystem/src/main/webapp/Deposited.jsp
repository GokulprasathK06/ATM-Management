<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%

String username = request.getParameter("username");

String pinnumber = request.getParameter("pinnumber");

String driver = "com.mysql.cj.jdbc.Driver";

String connectionUrl = "jdbc:mysql://localhost:3306/Atmmachine";

String userid = "root";

String password = "gokul@06";

try {

Class.forName(driver);

} catch (ClassNotFoundException e) {

e.printStackTrace();

}

Connection connection = null;

Statement statement = null;

ResultSet resultSet = null;

%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(function() {
            $('#header').load('header.html');
        });
    </script></head>
<html>

<!-- <style>
body{
background-image:url("result.jpg");
}
h1{
  text-align:center;
  font-family:Calibri,Melvetica,sans-serif;
  margin-top:50px;
 
}

.styled-table {
    
    border-collapse: collapse;   
    margin-left:auto;
    margin-right:auto;
    width:50%;
    border:3px solid green;
    margin-top:100px;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}
.styled-table thead tr {
    background-color: #009879;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #009879;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #009879;
}

</style> -->
<style>
body{
background-image:url("last.PNG");
}
h1{
  text-align:center;
  font-family:Calibri,Melvetica,sans-serif;
  margin-top:10px;
}
main{
   text-align:center;
   margin-top:300px;
   margin-left:20px;
}
nav a{
   display:block;
   margin-bottom:10px;
   border-bottom:1px solid #000;
}
</style>

<body>
<div id="header">
<object data="header.html"></object>
</div>
<main>
<h1>Amount Deposited successfully</h1>

<a href=Menu.jsp>Do you want continue?</a><br/><br/>
<a href=Exit.jsp>Exit</a><br/><br/>

</main>


<!--  <table class="styled-table" border="1">

<tr style="font-weight:bold" >

<td>Username</td>

<td>Balance</td>

</tr>

<%

try{

connection = DriverManager.getConnection(connectionUrl, userid, password);

statement=connection.createStatement();

String sql ="select * from atm where username ='"+username+"' and pinnumber='"+pinnumber+"'";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){

%>

<tr>

<td><%=resultSet.getString("username") %></td>

<td><%=resultSet.getString("balance") %></td>

</tr>

<%

}

connection.close();

} catch (Exception e) {

e.printStackTrace();

}

%>

</table>-->

</body>

</html>