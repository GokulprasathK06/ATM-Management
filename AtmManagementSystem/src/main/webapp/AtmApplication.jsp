<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

 <style>
 * {
            margin: 0;
            padding: 0;
            
        }
 
        .navbar {
            display: flex;
            align-items: center;
            justify-content: center;
            position: sticky;
            top: 0;
            cursor: pointer;
            
        }
 
        .background {
            background: black;
            background-blend-mode: darken;
            background-size: cover;
        }
 
        .nav-list {
            width: 70%;
            display: flex;
            align-items: center;
            margin-right:350px;
        }
 
        .logo {
            display: flex;
            justify-content: center;
            align-items: center;
        }
 
        .logo img {
            width: 180px;
            border-radius: 50px;
        }
 
        .nav-list li {
            list-style: none;
            padding: 26px 30px;
        }
 
        .nav-list li a {
            text-decoration: none;
            color: white;
        }
 
        .nav-list li a:hover {
            color: grey;
        }
 
        .rightnav {
            width: 30%;
            text-align: right;
            
        }
 
        #search {
            padding: 5px;
            font-size: 17px;
            border: 2px solid grey;
            border-radius: 9px;
        }
 
        .firstsection {
            background-color: green;
            height: 400px;
        }
 
        .secondsection {
            background-color: blue;
            height: 400px;
        }
 
        .box-main {
            display: flex;
            justify-content: center;
            align-items: center;
            color: black;
            max-width: 80%;
            margin-right: auto;
            height: 80%;
            
        }
 
        .firsthalf {
            width: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
 
        .secondhalf {
            width: 30%;
        }
 
        .secondhalf img {
            width: 70%;
            border: 4px solid white;
            border-radius: 150px;
            display: block;
            margin: auto;
        }
 
        .text-big {
            font-family: 'Piazzolla', serif;
            font-weight: bold;
            font-size: 35px;
        }
 
        .text-small {
            font-size: 18px;
        }
 
        .btn {
            padding: 8px 20px;
            margin: 7px 0;
            border: 2px solid white;
            border-radius: 8px;
            background: none;
            color: white;
            cursor: pointer;
        }
 
        .btn-sm {
            padding: 6px 10px;
            vertical-align: middle;
        }
 
        .section {
            height: 400px;
            display: flex;
            align-items: center;
            justify-content: center;
            max-width: 90%;
            margin: auto;
        }
 
        .section-Left {
            flex-direction: row-reverse;
        }
 
        .paras {
            padding: 0px 65px;
        }
 
        .thumbnail img {
            width: 250px;
            border: 2px solid black;
            border-radius: 26px;
            margin-top: 19px;
        }
 
        .center {
            text-align: center;
        }
 
        .text-footer {
            text-align: center;
            padding: 30px 0;
            font-family: 'Ubuntu', sans-serif;
            display: flex;
            justify-content: center;
            color: white;
        }
    /* CSS Styles */
    body {
      font-family: Arial, sans-serif;
    }

    .container {
      width: 400px;
      margin: 0 auto;
    }

    h2 {
      text-align: center;
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"],
    textarea {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    input[type="submit"] {
      background-color: #4CAF50;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      float: right;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<nav class="navbar background">
        <ul class="nav-list">
            <li><a href="AtmLogin.html">Login</a></li>
            <li><a href="Registration.html">Register</a></li>
             <li><a href="help.jsp">Help</a></li>
            <li><a href="Exit.jsp">Exit</a></li>
        </ul>
 
        
    </nav>
  <div class="container">
    <h2>Application Form</h2>
    <form action="Application.jsp" method="post">
      <div class="form-group">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" pattern="[a-zA-Z]+" title="please enter a valid username" required>
      </div>
      <div class="form-group">
        <label for="accnumber">AccountNumber:</label>
        <input type="text" id="accnumber" name="accnumber" pattern="[0-9]{10}"  title="please enter a valid number" required milength=10 maxlength=10>
      </div>
      <div class="form-group">
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="form-group">
        <label for="mobilenumber">MobileNumber:</label>
        <input type="text" name="mobile" id="mobile" pattern="[0-9]{10}"title="please enter a valid number" required minlength=10 maxlength=10>
      </div>
      <div class="form-group">
        <label for="Aadhar">Aadharnumber:</label>
        <input type="text" id="name" name="Aadhar" pattern="[0-9]{12}"title="please enter a valid number" required minlength=12 maxlength=12>
      </div><div class="form-group">
        <label for="Pan">Pannumber:</label>
        <input type="text" id="name" name="Pan" pattern="[0-9]{10}"title="please enter a valid number" required minlength=10 maxlength=10>
      </div>
      <input type="submit" value="Submit">
    </form>
  </div>
</body>
</html>