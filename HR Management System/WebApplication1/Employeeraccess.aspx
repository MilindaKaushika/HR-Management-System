<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employeeraccess.aspx.cs" Inherits="WebApplication1.Employeeraccess" %>

<!DOCTYPE html>

<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/lines.css" rel='stylesheet' type='text/css' />
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Nav CSS -->
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<!-- Graph JavaScript -->
<script src="js/d3.v3.js"></script>
<script src="js/rickshaw.js"></script>
</head>
<body>
    <style type="text/css">
.table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 10px !important;
}
 
</style>
    <form id="form1" runat="server">
<div id="wrapper">
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand">Wellcome <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label></a>
            </div>
                  <ul class="nav navbar-nav navbar-right">	
	      <br>
			       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1"  >LOGOUT</asp:LinkButton>
			</ul>
          <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu1">
                        
                        <li>
                     
                         <a href="#"><i class="fa fa-indent nav_icon"></i>Leave Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="leave.aspx">Add Leaves</a>
                                </li>
                           
                             <li>
                                    <a href="leavedisplay.aspx">Display Leave Approval</a>
                                </li>
                             
                            </ul>
                           
                     <a href="#"><i class="fa fa-indent nav_icon"></i>Attendance Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Attendance.aspx">Add Attendance</a>
                                </li>
                                 </ul>
                            
</ul>

                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->

        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">

       
                  <div id="divwelcome" runat="server" class="div_header" visible="false">

  	    <h3>Employer Profile Details</h3>
             <div class="bs-example4" data-example-id="contextual-table"> 
            
        
        
        
     </div>
           <div>
               </div>
        
 <div class="copy">
            <p>HR Management System</p>
	    </div>
		</div>
   </div>

      <!-- /#page-wrapper -->
  
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
    </form>
</body>
