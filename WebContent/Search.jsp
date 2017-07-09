<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.Statement"%>
<!DOCTYPE jsp>
<jsp lang="en">
<head>
<title>Food At Your Door</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/tms-0.4.1.js"></script>


<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login Form</title>
        <link rel="stylesheet" href="css/Style1.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/Style1.css"> -->
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: false,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(function () {
    $('.carousel1').carouFredSel({
        auto: false,
        prev: '.prev',
        next: '.next',
        width: 960,
        items: {
            visible: {
                min: 1,
                max: 4
            },
            height: 'auto',
            width: 240,
        },
        responsive: false,
        scroll: 1,
        mousewheel: false,
        swipe: {
            onMouse: false,
            onTouch: false
        }
    });
});
</script>
   <style>
/*        button {
 /*  padding: 19px 20px 18px 20px; */

  color: #FFF;
  background-color: #4bc970;
  font-size: 18px;
  text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 20%;
   height: 30%;
  border: 1px solid #3ac162;
  border-width: 1px 1px 3px;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}
 */
h1 {
  margin: 0 0 30px 0;
  text-align: center;
}

 /* label {
  display: block; 
   margin-bottom: 8px;  
}  */

.dropbtn {
    background-color: #4bc970;
    color: white;
    padding: 16px;
    font-size: 18px;
    border: none;
    cursor: pointer;
      text-align: center;
  font-style: normal;
  border-radius: 5px;
  width: 100%;
   height: 30%;
  box-shadow: 0 -1px 0 rgba(255,255,255,0.1) inset;
  margin-bottom: 10px;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}


       </style>
</head>
<body>
	 <div class="main"> 
	<header>
	<p><% String path=(String)session.getAttribute("username");
	if(path!=null)
	{
		%><h3>welcome <%=path %></h3><%
	}
	%>	
	</p>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.jsp"><img src="images/logo.png" alt=""></a>
				</h1>
				<div class="menu_block">
					<nav>
						<ul class="sf-menu">
							<li class="current"><a href="index.jsp">Home</a></li>
							<li class="with_ul"><a href="#">Sign In</a>
							<li><a href="menu.jsp">Menu</a></li>
							<li><a href="portfolio.jsp">Portfolio</a></li>
							<li><a href="news.jsp">News</a></li>
							<li><a href="Logout.jsp">Logout</a></li>
						</ul>
					
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
		</div>
	</header>
		<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project18","root","root");
				String query = "select * from vendor";

				java.sql.Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(query);
%>
 <h1>Search for vendor list</h1>
				 <label for="City">City:</label>
         <select name="City">
				<% while (rs.next()) {%>
				
					
					<option onclick="myFunction1()"> <%=rs.getString(4) %></option>
					
					
				<%}%>
				</select>
				<script type="text/javascript">
				function click( name){
					String nameOne=document.getElementById(m).value;
				<% String query1 = "select * from vendor where vaddress='pune'";

				java.sql.Statement stmt1 = con.createStatement();
				ResultSet rs1 = stmt.executeQuery(query1);
				while (rs1.next()) {%>
					<div class="dropdown">
<button onclick="myFunction()" class="dropbtn">Dropdown</button>
  <div id="myDropdown" class="dropdown-content">
     <a href="#home" onclick="myFunction1()"><%=rs1.getString(2) %></a> 
  </div>
</div>
										
		<%
				}
				%>
				}
				</script>
				<input type="hidden" name="nam" id="m">
<div id="myDIV">
<table border="1">
                <tr>
                <th> Name</th>
                <th>Id</th>
                </tr>
                <tr>
                <td>Washington</td>
                <td>111</td>
                </tr>
                <tr>
                <td>aaa</td>
                <td>222</td>
                </tr>
                </table>
</div>

 
<script>
function myFunction1() {
    var x = document.getElementById('myDIV');
    if (x.style.display === 'none') {
        x.style.display = 'block';
    } else {
        x.style.display = 'none';
    }
}


function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
		
	
</body>
</jsp>