<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="help.css">
</head>
<body>
 <header>
    <h1>Help Desk</h1>
  </header>

  <div class="container">
    <form action="Help1.jsp" method="POST">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" pattern="[a-zA-Z]+" title="please enter a valid username" required><br><br>

      <label for="email">Email:</label>
      <input type="email" id="email" name="email" required><br><br>

      <label for="issue">Issue:</label>
      <textarea id="issue" name="issue" rows="5" required></textarea><br><br>

      <input type="submit" value="Submit">
    </form>
  </div>

  <footer>
    <p>&copy; 2023 Help Desk. All rights reserved.</p>
  </footer>
</body>
</html>