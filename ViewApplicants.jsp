<%@ page import = "java.io.*,java.util.*, javax.servlet.*, javax.servlet.http.*, java.sql.*" %>
<html>
	<head>
		<title>View Job</title>
		<style>
		/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 20px 0 10px 0;
  position: relative;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
  color: white;
}


/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.6); /* Black w/ opacity */
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #262626;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 0px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #fff;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: #03e9f4;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}

			table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}
th{
	background: rgba(0,0,0,.8);
	color: #03e9f4;
}

tr:hover {background-color:#f5f5f5;}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  
}

li {
  float: left;
  align: right;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 15px 20px;
  text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
  background-color: #03e9f4;
}

li.dropdown {
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 100px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {background-color: #f1f1f1;}

.dropdown:hover .dropdown-content {
  display: block;
}
.active {
  background-color: #03e9f4;
}
.login-box{
	position: absolute;
	top: 50%;
	left: 50%;
	width: 400px;
	padding: 40px;
	transform: translate(-50%, -50%);
	background: rgba(0,0,0,.8);
	box-sizing: border-box;
	border-radius: 10px;
	box-shadow: 0 15px 25px rgba(0,0,0,.6);
}
.login-box h2{
	margin: 0 0 30px;
	text-transform: uppercase;
	font-size: 35px;
	color: #fff;
	padding: 0;
	text-align: center;
}
.login-box .container .user-box{
	position: relative;
}
.login-box .container .user-box input{
	width: 100%;
	padding: 10px 0;
	font-size: 16px;
	color: #fff;
	margin-bottom: 30px;
	border: none;
	border-bottom: 1px solid #03e9f4;
	outline: none;
	background: transparent;
	caret-color: #03e9f4;
}
.login-box .container .user-box label{
	position: absolute;
	top: 0;
	left: 0;
	padding: 10px 0;
	font-size: 16px;
	color: #03e9f4;
	pointer-events: none;
	transition: .5s;
}
.login-box .container .user-box input:focus ~ label,
.login-box .container .user-box input:valid ~ label{
	top: -20px;
	left: 0;
	color: #03e9f4;
	font-size: 12px;
}
button {
	background: transparent;
	position: relative;
	display: block;
	padding: 10px 20px;
	color: #03e9f4;
	text-transform: uppercase;
	font-weight:600;
	text-decoration: none;
	transition: .5s;
	letter-spacing: 4px;
	margin-top: 40px;
	overflow: hidden;
	font-size: 18px;
}
button:hover{
	background: #03e9f4;
	color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 5px #03e9f4,
				0 0 25px #03e9f4,
				0 0 50px #03e9f4,
				0 0 100px #03e9f4;
}
button span{
	position: absolute;
	display: block;
}
button span:nth-child(1){
	top: 0;
	left: -100%;
	width: 100%;
	height: 2px;
	background: linear-gradient(90deg, transparent, #03e9f4);
	animation: animate 1s linear infinite;
}
@keyframes animate {
	0%{
		left: -100%;
	}
	50%,100%{
		left: 100%;
	}
}
button span:nth-child(2){
	top: -100%;
	right: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(180deg, transparent, #03e9f4);
	animation: animate2 1s linear infinite;
	animation-delay: .25s;
}
@keyframes animate2 {
	0%{
		top: -100%;
	}
	50%,100%{
		top: 100%;
	}
}
button span:nth-child(3){
	right: -100%;
	bottom: 0;
	height: 2px;
	width: 100%;
	background: linear-gradient(270deg, transparent, #03e9f4);
	animation: animate3 1s linear infinite;
	animation-delay: .5s;
}
@keyframes animate3 {
	0%{
		right: -100%;
	}
	50%,100%{
		right: 100%;
	}
}
button span:nth-child(4){
	bottom: -100%;
	left: 0;
	width: 2px;
	height: 100%;
	background: linear-gradient(360deg, transparent, #03e9f4);
	animation: animate4 1s linear infinite;
	animation-delay: .75s;
}
@keyframes animate4 {
	0%{
		bottom: -100%;
	}
	50%,100%{
		bottom: 100%;
	}
}
.login-box .container label{
	color: #03e9f4;
}
		</style>
	</head>
	<body>
<%
	String DB_URL="jdbc:mysql://localhost/employer";
	String USER = "root";
	String PASS = "3009";
	
	int flag=0;
	Statement stmt= null;
	String sql=null;
	try
	{
		java.sql.Connection con;
		con = null;
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		con = DriverManager.getConnection(DB_URL, USER, PASS);
		stmt = con.createStatement();
		sql = "SELECT * FROM applicant";
		ResultSet rs = stmt.executeQuery(sql);
%>
		<table>
			<tr>
				<ul>
					<li>
						<a href="EmpWelcome.html">Home</a>
					</li>
					<li>
			<a onclick="document.getElementById('id01').style.display='block'">Add JOB</a>
		</li>
					<li>
			<a href="EmpView.jsp">View JOB</a>
		</li>
		<li>
			<a class="active">Applicants</a>
		</li>
		<li>
			<a href="JobPortal.html">Sign Out</a>
		</li>
				</ul>
			</tr>
		</table>
		<div id="id01" class="modal">
		<form class="modal-content animate" action="EmpAddJob.jsp" method="post">
			<div class = "login-box">
				<div class="imgcontainer">
					<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
				</div>
				<h2>Add Job</h2>
				<div class="container">
					<div class="user-box">
					<input type="text" name="Jobpost" required="">
					<label>Job Post</label>
				</div>
				<div class="user-box">
					<input type="text" name="Location" required="">
					<label>Location</label>
				</div>
				<div class="user-box">
					<input type="text" name="Language" required="">
					<label>Program Language</label>
				</div>
				<div class="user-box">
					<input type="number" name="Salary" required="">
					<label>Salary</label>
				</div>
				<div class="user-box">
					<input type="text" name="Status" required="">
					<label>Status (Active/Inactive)</label>
				</div>
				<button name="btn_add">
					<span></span>
					<span></span>
					<span></span>
					<span></span>
					ADD
				</button>
				</div>
			</div>
		</form>
	</div>
	<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
		<br>
		<table>
			<tr>
				
				<th>NAME</th>
				<th>EMAIL ID</th>
				<th>JOB NAME</th>
				<th>STATUS</th>
				<th></th>
			</tr>
<%
		
		while(rs.next())
		{ flag=1; 
%>
		
			<tr>
				
			
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><a href="JobConfirm.jsp?edit=<%=rs.getInt(1) %>">Confirm?</a></td>
			</tr>
<%
		
		}
		if(flag==0)
		{
			out.println("Error");
		}
		rs.close();
		stmt.close();
		con.close();
	}
	catch(SQLException se)
	{
		//Handle errors for JDBC
		se.printStackTrace();
	}
	catch(Exception e)
	{
		//Handle errors for Class.forName
		e.printStackTrace();
	}
	finally
	{
		//finally block used to close resources
		try
		{
			if(stmt!=null)
			stmt.close();
		}
		catch(SQLException se2)
		{
		} // nothing we can do
	} //end try
%>
</body>
</html>