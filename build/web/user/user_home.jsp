<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/master_user.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Untitled Document</title>
<%
            String e1="",usertype="";
        if(session==null)
        {
            response.sendRedirect("../AuthError.jsp");
        }
        else
        {
            try
            {
                e1=session.getAttribute("email").toString();
                usertype=session.getAttribute("usertype").toString();
                if(usertype.equalsIgnoreCase("user")==false)
                {
                    response.sendRedirect("../AuthError.jsp");
                }
            }
            catch(NullPointerException e)
            {
                response.sendRedirect("../AuthError.jsp");
            }
        }
        %>

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

        <h1><a href="#">User Block</a></h1>
        <p><a href="Profile.jsp">Profile</a></p>
        <p><a href="Change_Password.jsp">Change Password</a></p>
        <p><a href="ShowBooks.jsp">All Book</a></p>
        <p><a href="EditUser.jsp">Edit User Details</a></p>
        <p><a href="../logout.jsp">Log Out</a></p>
            <!-- InstanceEndEditable -->          
        </div>
    </div>
</div>
<div style="text-align:center;">Copyright By Hari &copy; Publications</div>

</body>
<!-- InstanceEnd --></html>
