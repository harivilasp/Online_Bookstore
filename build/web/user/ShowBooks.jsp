<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/master_user.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="had" -->
<!-- InstanceEndEditable -->
<link rel="stylesheet" type="text/css" href="styles/bootstrap-4.0.0-beta.2-dist/css/bootstrap.css">
<script type="text/javascript" src="styles/bootstrap-4.0.0-beta.2-dist/js/bootstrap.js"></script>

<style>
.A
{
	border:1px solid #000;
	height:90px;
	background:#FC6;
}
.a
{
	font-size:36px;
	text-align:center;
	margin-top:18px;
	
	}
.menu
{
	border:1px solid #000;
	background:#FFF;
	}
.item
{
	background:#FFF;
	color:#600;
	
	}	
.item:hover
{
	background:#999;	
	}	


</style>
</head>

<body>
<div class="container-fluid header A">
<p class="a">Study Assistant</p>
</div>
<div class="container-fluid menu">
<div class="btn-group">
<button class="btn btn-outline-light item" style="margin-left:290px;">Home</button>
<button class="btn btn-outline-light item" style="margin-left:100px;">Buy Books</button>
<button class="btn btn-outline-light item" style="margin-left:100px;">Contact</button>
<button class="btn btn-outline-light item" style="margin-left:100px;">About Us</button>
<button class="btn btn-outline-light item" style="margin-left:100px;">Login</button>

</div>
</div>
<div id="wrapper"  style="margin-left:3%;margin-right:3%;">
<h1 align="center">Welcome to Our Study Assistant</h1>
<div class="container-fluid">
    <div class="row">
        <div class="col-4 content1" style="border:solid 1px #333333;">
        <img src="Saved Pictures/school2.jpg" width="100%" height="70%"></img>
         </div>
        <div class="col-8 content1" style="border:solid 1px #333333;">
            <!-- InstanceBeginEditable name="m1" -->

<h1>Admins</h1>
        <%
            
        //Create the connection between java and mysql
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","");
        //Create the query
        String S1="select * from books";
		String email=session.getAttribute("email").toString();
        //Create the statement
        PreparedStatement p1=cn.prepareStatement(S1);
        ResultSet r1=p1.executeQuery();
        while(r1.next())
        {
            String book_id,book_name,author,book_subject,publisher,isbn,price,description,qty;
            book_id=r1.getString("bookid");
            book_name=r1.getString("book_name");
            author=r1.getString("author");
            book_subject=r1.getString("book_subject");
            publisher=r1.getString("publisher");
            isbn=r1.getString("isbn");
            price=r1.getString("price");
            description=r1.getString("description");
            qty=r1.getString("qty");
            %>
            
            <h3> Book Id :<%= book_id %></h3>
            <p>
                Book Name : <%= book_name %><Br/>
                Author : <%= author %><Br/>
                Subject : <%= book_subject %><br/>
                Publisher : <%= publisher %><Br/>
                ISBN : <%= isbn %><br/>
                Price : <%= price %><Br/>
                Description : <%= description %><br/>
                Quantity : <%= qty %><br/>
            </p>
            <form action="Add_Cart.jsp" method="get">
            	<input type="hidden" value="<%=book_id%>" name="book_id"/>
                <input type="hidden" value="<%=email%>" name="email"/>
            	
            	<button type="submit">Order Now</button>
            </form>
            <hr/>
            <%
        }
        %>
        <p><a href="user_home.jsp"> Back to Home </a></p>
            <!-- InstanceEndEditable -->          
        </div>
    </div>
</div>
<div style="text-align:center;">Copyright By Hari &copy; Publications</div>

</body>
<!-- InstanceEnd --></html>
