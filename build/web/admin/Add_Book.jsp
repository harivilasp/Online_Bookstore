<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/master_admin.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
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
<button class="btn btn-outline-light item" style="margin-left:100px;">Add Books</button>
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
        	<!-- InstanceBeginEditable name="cont" -->

    <h1 align="center"> Enter Book Details</h1>
        <form name="form1" method="post" action="Add_Book1.jsp">
          <p>&nbsp; </p>
          <p>Book Id :
            <input type="text" name="T1" id="T1">
          </p>
          <p>Book Name :
            <input type="text" name="T2" id="T2">
          </p>
          <p>Author :
            <input type="text" name="T3" id="T3">
          </p>
          <p>Book Subject : 
            <input type="text" name="T4" id="T4">
          </p>
          <p>Publisher :
            <input type="text" name="T5" id="T5">
          </p>
          <p>ISBN : 
            <input type="text" name="T6" id="T6">
          </p>
          <p>Price : 
            <input type="text" name="T7" id="T7">
          </p>
          <p>Description :
            <input type="text" name="T8" id="T8">
          </p>
          <p>Qty :          
            <input type="text" name="T9" id="T9">
          </p>
          <p>
            <input type="submit" name="B1" id="B1" value="Submit">
          </p>
        </form>
        <h1>&nbsp;</h1>
        <p><a href="admin_home.jsp"> Back to Home </a></p>
            <!-- InstanceEndEditable -->
                       
        </div>
    </div>
</div>
<div style="text-align:center;">Copyright By Hari &copy; Publications</div>
</body>
<!-- InstanceEnd --></html>
