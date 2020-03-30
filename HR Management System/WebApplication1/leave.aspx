<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leave.aspx.cs" Inherits="WebApplication1.leave" %>

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
.isDisabled {
  color: currentColor;
  cursor: not-allowed;
  opacity: 0.5;
  text-decoration: none;
}
</style>
<body>
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
                <a class="navbar-brand" href="index.html">Wellcome HR  Department</a>
            </div>
                  <ul class="nav navbar-nav navbar-right">	
	      <br>
			       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"    >LOGOUT</asp:LinkButton>
			</ul>
           <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu1">
                        
                        <li>
                            <a href="HR.aspx" class="isDisabled"><i class="fa fa-laptop nav_icon" ></i>Employeres Details<span class="fa arrow"></span></a>
                              <ul class="nav nav-second-level">
                                <li>
                                     <a href="Employregadmin.aspx" >Add Employeres</a>
                             
                                </li>
                                <li>
                                          <a href="Employeetable.aspx" >Employere Table</a>
                                </li>
                            </ul> 
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#" class="isDisabled"><i class="fa fa-indent nav_icon" ></i>Department Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Department.aspx" >Add Departments</a>
                                </li>
                             
                            </ul>
                              </li>
                        <li>
                         <a href="#"><i class="fa fa-indent nav_icon"></i>Leave Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="leave.aspx">Add Leaves</a>
                                </li>
                             <li>
                                    <a href="leaveapprovel.aspx">Leaves Approval</a>
                                </li>
                               
                             <li>
                                    <a href="leavedisplay.aspx">Display Leave Approval</a>
                                </li>
                             
                            </ul>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Course Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Course.aspx">Add Course</a>
                                </li>
                             
                               
                             
                            </ul>
                     <a href="#"><i class="fa fa-indent nav_icon"></i>Attendance Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Attendance.aspx">Add Attendance</a>
                                </li>
                             
                    </ul>
 <a href="#" class="isDisabled"><i class="fa fa-indent nav_icon" ></i>Employeer Salary<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="salarypayment.aspx" >Salary calculation</a>
                                </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
     
             <div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>WellCome:
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           </h3>
             <div class="bs-example4" data-example-id="contextual-table"> 
       <div id="divwelcome" runat="server" class="div_header" visible="false">
            <div class="form-group" id="2">  
              <label class="control-label">Employee ID</label>
                            <asp:DropDownList ID="DropDownList2" width="980px" Height="40px" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1" AutoPostBack="True" ng-model="model.password" required="" DataSourceID="SqlDataSource1" DataTextField="em_Id" DataValueField="em_Id" >
            
                              </asp:DropDownList>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [em_Id] FROM [Employee]"></asp:SqlDataSource>
                   </div>
            <div class="form-group" id="5">
              <label class="control-label">Employee Name</label>
     <asp:TextBox ID="TextBox4" runat="server"  Height="40px" class="form-control1 ng-invalid ng-invalid-required" Width="980px" OnTextChanged="TextBox2_TextChanged" ng-model="model.password" required="" ></asp:TextBox>
            </div>
            <div class="form-group" id="3">
              <label class="control-label">Department Name</label>
             <asp:DropDownList ID="DropDownList1" width="980" Height="40px" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1"  ng-model="model.password" required="">
            
                              </asp:DropDownList>
            </div>
                          <div class="form-group" id="4">
              <label class="control-label">Select Leave Type</label>
              <asp:DropDownList ID="DropDownList3" width="980" Height="40px" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1"  AutoPostBack="false"  ng-model="model.password" required="">
                  <asp:ListItem>--Leave Type--</asp:ListItem>
                  <asp:ListItem>FullDay</asp:ListItem>
                  <asp:ListItem>Halfday</asp:ListItem>
                              </asp:DropDownList>
            </div>
               <div class="form-group" id="5">
              <label class="control-label">Employee Email</label>
     <asp:TextBox ID="TextBox8" runat="server"  Height="40px" class="form-control1 ng-invalid ng-invalid-required" Width="980px" OnTextChanged="TextBox2_TextChanged" ng-model="model.password" required="" ></asp:TextBox>
            </div>
            <div class="form-group filled">
 <label class="control-label">Leave Apply Start Date</label>
              <asp:TextBox ID="TextBox1" runat="server" type="date" Height="40px" class="form-control1 ng-invalid ng-invalid-required" Width="980px" OnTextChanged="TextBox2_TextChanged" ng-model="model.password" required="" Enabled="False"></asp:TextBox>
            </div>
                     <div class="form-group filled">
 <label class="control-label">Leave Apply End Date</label>
                <asp:TextBox ID="TextBox2" runat="server" type="date" Height="40px" class="form-control1 ng-invalid ng-invalid-required" Width="980px" OnTextChanged="TextBox2_TextChanged" ng-model="model.password" required="" Enabled="False"></asp:TextBox>
            </div>
                <div class="form-group filled">
 <label class="control-label">Number of leaves</label>
                    <br />
                <asp:TextBox ID="body" runat="server" type="text" Height="40px"  Width="180px" BackColor="#F3F3F3" Enabled="False"></asp:TextBox>
            </div>
                <div class="form-group filled">
 <label class="control-label">Leave Reason</label>
            
                    <br />           
                    <asp:TextBox ID="TextBox3" runat="server" Height="92px" Width="976px" ng-model="model.password" required=""></asp:TextBox>

            </div>
              <div class="form-group">
                
                   
                  <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Height="38px" Text="Submit" Width="85px" OnClick="Button1_Click" />
                  <asp:Button ID="Button2" runat="server" Height="38px" class="btn btn-default" Text="Clear" Width="85px" />
                
                </div>   
            </div>
         
   </div>
 <div class="copy">
            <p>HR Management System</p>
	    </div>
		</div>
   </div>
<link href="css/custom.css" rel="stylesheet">
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
    </form>
</body>
