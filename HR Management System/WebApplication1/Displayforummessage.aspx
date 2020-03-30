<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Displayforummessage.aspx.cs" Inherits="WebApplication1.Displayforummessage" %>

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
<style type="text/css">
    .div_post_display
{
    width:100%;
    height:150px;
    border:1px solid #dddddd;
    padding:5px 5px 10px 5px;
    margin:5px 5px 5px 5px;
    overflow:hidden;
    margin-top:20px;    
}
.divpostmsg
{
    padding:2px 2px 2px 2px;
    overflow:hidden;
}
.btnreadmore
{
    border-collapse:collapse;
}
.btnreadmore, btnreadmore:hover, btnreadmore:visited
{ 
    
    background:#000000;
    color:#ffffff;
    padding:10px 20px 10px 20px;
    float:right;
}
.btnreadmore:hover
{
    background:#6699cc;
    color:#ffffff;
    padding:10px 20px 10px 20px;
}
.divreader, divauthor
{  
     width:100%;
}
.divauthor
{
    float:right;
}
.div_log_reg_ribbon
{
    width:100%;
    float:right;
    margin-top:-35px;
    margin-right:20px;
}
.div_log_reg_ribbon table
{
   float:right;
   margin-top:-30px;
}
.div_log_reg_ribbon a
{
    float:right;
    color:#fafafa;
    padding:5px 5px 5px 5px;
}
.div_dashboard
{
    width:300px;
    height:350px;
    background:#66cccc;
    float:right;
    margin-top:10px;
}
.div_dahboard table
{
    border-collapse:collapse;
}
.div_dashboard table
{
    width:100%;
}
.div_dashboard table th
{
    width:100%;
    font-family:Verdana Tahoma Times New Roman;
    font-size:2em;
    font-weight:bold;
    color:#990000;
}
.div_dashboard table td, th
{
    border-bottom:1px solid #fafafa;    
    text-align:center;
    padding:10px 10px 10px 10px;
}
.div_dashboard table td a
{
    text-decoration:none;
    font-family:Verdana Tahoma Times New Roman;
    font-size:1.2em;
    font-weight:bold;
    color:#ffffff;
}
    .div_dashboard table td a:hover {
        text-decoration: none;
        font-family: Verdana Tahoma Times New Roman;
        font-size: 1.2em;
        font-weight: bold;
        color: #0000cc;
    }

    </style>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
      
    </div>
     <!-- Navigation -->
        <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Welcome : <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a>
            </div>
                  <ul class="nav navbar-nav navbar-right">	
	      <br>
			          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >LOGOUT</asp:LinkButton>
			</ul>
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu1">
                        
                         <li>
                             <a href="Forum.aspx"><i class="fa fa-indent nav_icon"></i>Home Page<span class="fa arrow"></span></a>
                           
                               </li>
                   

                        <li>
                             <a href="Displayforummessage.aspx"><i class="fa fa-indent nav_icon"></i>Post Articles<span class="fa arrow"></span></a>
                           
                               </li>
                   
                  
                           <li>
                             <a href="Displayourmessage.aspx"><i class="fa fa-indent nav_icon"></i>Your Articles<span class="fa arrow"></span></a>
                           
                          
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
          <!-- /.navbar-static-side -->
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  
             <div class="col-md-12 graphs">
	   <div class="xs">
        
  	      <asp:Panel ID="div_post_display_panel" runat="server"/>
   </div>
          
   </div>
 
		</div>
   </div>
         </form>
      <!-- /#page-wrapper -->
  
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
</body>
