<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<meta charset="UTF-8">

 
<html>
 
<head>
    <title>Simple web Development Template</title>
 
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
            margin: auto;
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
    </style>
</head>
 
<body>
    <nav class="navbar background">
        <ul class="nav-list">
            <li><a href="AtmLogin.html">Login</a></li>
            <li><a href="Registration.html">Register</a></li>
             <li><a href="AtmApplication.jsp">CardApply</a></li>
            <li><a href="Exit.jsp">Exit</a></li>
        </ul>
 
        <div class="rightNav">
            <input type="text" name="search" id="search">
            <button class="btn btn-sm">Search</button>
        </div>
    </nav>
 
    <section class="firstsection">
        <div class="box-main">
            <div class="firstHalf">
                <h1 class="text-big" id="web">Your Bank</h1>
                <p class="text-small">
                   Your Bank of India (YBI) a Fortune company, is an Indian Public Sector Banking and Financial services statutory body headquartered in Chennai. The rich heritage and legacy of over 200 years, accredits YBI as the most trusted Bank by Indians through generations.

YBI, the largest Indian Bank with 1/4th market share, serves over 45 crore customers through its vast network of over 22,000 branches, 62617 ATMs/ADWMs, 71,968 BC outlets, with an undeterred focus on innovation, and customer centricity, which stems from the core values of the Bank - Service, Transparency, Ethics, Politeness and Sustainability.

The Bank has successfully diversified businesses through its various subsidiaries i.e YBI General Insurance, YBI Life Insurance, YBI Mutual Fund, YBI Card, etc. It has spread its presence globally and operates across time zones through 229 offices in 31 foreign countries.
                </p>
 
 
            </div>
        </div>
    </section>
 
    <section class="secondsection">
        <div class="box-main">
            <div class="firstHalf">
                <h1 class="text-big" id="program">
                    ATM Services
                    
                </h1>
                <p class="text-small">
                    Your Bank offers you the convenience of over 50,000+ ATMs in India, the largest network in the country and continuing to expand fast! This means that you can transact free of cost at the ATMs of Your Bank and wholly owned subsidiary viz. YBI Commercial and International Bank Ltd., using the Your Bank ATM-cum-Debit (Cash Plus) card.
                </p>
 
 
            </div>
        </div>
    </section>
 
 
</body>
 
</html>