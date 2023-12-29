<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Amount Deposite</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(function() {
            $('#header').load('header.html');
        });
    </script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="CheckBalance.css">


</head>

<body>
<div id="header">
<object data="header.html"></object>
</div>

<form action="Deposite" method="post">

<div class="container">

<div class="form balance">

<h2>Amount Deposite</h2>

<div class="inputbox">

<input type="text" name="username" pattern="[a-zA-Z]+" title="please enter a valid username">

<i class="fa-solid fa-check"></i>

<span>Enter username</span>

</div>


<div class="inputbox">

<input type="password" name="pinnumber" pattern="[0-9]{04}" title="please enter a valid 4 digit number" minlength=4 maxlength=4>

<i class="fa-solid fa-lock"></i>

<span>Enter Pin Number</span>

</div>

<div class="inputbox">

<input type="submit" value="Deposit">

</div>

</div>

</div>

</form>

</body>

</html>