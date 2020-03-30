<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employeetable.aspx.cs" Inherits="WebApplication1.Employeetable" %>


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
.table td, .table>tbody>tr>td, .table>tbody>tr>th, .table>tfoot>tr>td, .table>tfoot>tr>th, .table>thead>tr>td, .table>thead>tr>th {
    padding: 3px !important;
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
                            <a href="HR.aspx"><i class="fa fa-laptop nav_icon"></i>Employeres Details<span class="fa arrow"></span></a>
                              <ul class="nav nav-second-level">
                                <li>
                                     <a href="Employregadmin.aspx">Add Employeres</a>
                             
                                </li>
                                <li>
                                          <a href="Employeetable.aspx">Employere Table</a>
                                </li>
                            </ul> 
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-indent nav_icon"></i>Department Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Department.aspx">Add Departments</a>
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
 <a href="#"><i class="fa fa-indent nav_icon"></i>Employeer Salary<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="salarypayment.aspx">Salary calculation</a>
                                </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
  	 <h3>Edit Employee Details</h3>
  <div class="bs-example4" data-example-id="contextual-table"> 
    <asp:GridView ID="GridView1" runat="server"   CssClass="table table-hover table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="100px" Width="10px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="em_fname" HeaderText="em_fname" SortExpression="em_fname" />
            <asp:BoundField DataField="em_lname" HeaderText="em_lname" SortExpression="em_lname" />
            <asp:BoundField DataField="em_usertype" HeaderText="em_usertype" SortExpression="em_usertype" />
            <asp:BoundField DataField="em_password" HeaderText="em_password" SortExpression="em_password" />
            <asp:BoundField DataField="em_gender" HeaderText="em_gender" SortExpression="em_gender" />
            <asp:BoundField DataField="em_mobile" HeaderText="em_mobile" SortExpression="em_mobile" />
            <asp:BoundField DataField="em_address" HeaderText="em_address" SortExpression="em_address" />
            <asp:BoundField DataField="em_dateofbirth" HeaderText="em_dateofbirth" SortExpression="em_dateofbirth" />
            <asp:BoundField DataField="em_email" HeaderText="em_email" SortExpression="em_email" />
              <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-primary"  HeaderText="Delete" ShowHeader="True" ShowSelectButton="True" >
<ControlStyle ></ControlStyle></asp:CommandField>
        </Columns>
         <RowStyle CssClass="cursor-pointer" />
        </asp:GridView>
 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [em_fname], [em_lname], [em_usertype], [em_password], [em_gender], [em_mobile], [em_address], [em_dateofbirth], [em_email] FROM [Employee]"></asp:SqlDataSource>
 </div>
           <div>
               </div>
     
             <div class="col-md-12 graphs">
	   <div class="xs">
             <div class="bs-example4" data-example-id="contextual-table"> 
    
                <div class="form-group" id="1">  
              <label class="control-label">Employer ID : </label>
             <asp:Label ID="Label1" runat="server" Text="" BorderColor="#00CC00"></asp:Label>
            </div>
            <div class="form-group" id="2">  
              <label class="control-label">Employer First Name</label>
                <asp:TextBox ID="TextBox2" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ng-model="model.name" required=""></asp:TextBox>
            </div>
            <div class="form-group" id="3">
              <label class="control-label">Employer Last Name</label>
               <asp:TextBox ID="TextBox3" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ng-model="model.name" required=""></asp:TextBox>
            </div>
            <div class="form-group" id="4">
              <label class="control-label">Employer Mobile</label>
                  <asp:TextBox ID="TextBox4" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ValidationExpression="^[01]?[- .]?(\([2-9]\d{2}\)|[2-9]\d{2})[- .]?\d{3}[- .]?\d{4}$" ></asp:TextBox>
            </div>
            <div class="form-group" id="5">
              <label class="control-label">Employer Address</label>
               <asp:TextBox ID="TextBox5" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ng-model="model.name" required=""></asp:TextBox>
            </div>
            <div class="form-group" id="6">
              <label class="control-label">Employer Email</label>
                <asp:TextBox ID="TextBox6" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ng-model="model.email" required=""></asp:TextBox>
            </div>
            <div class="form-group" id="7">
              <label class="control-label">Employer User Name</label>
                 <asp:TextBox ID="TextBox7" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ng-model="model.email" required=""></asp:TextBox>
            </div>
              <div class="form-group" id="8">
              <label class="control-label">Employer Password</label>
             <asp:TextBox ID="TextBox8" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="980px" Height="40px" ng-model="model.password" required=""></asp:TextBox>
            </div>
                 <div class="form-group">
         
  
                     <asp:Button ID="Button1" runat="server" Height="42px" Text="Update" class="btn btn-primary" Width="85px"  />
                     <asp:Button ID="Button2" runat="server" Height="42px" Text="Clear" class="btn btn-default btn-lg" Width="85px" />
         
  
            </div>
            <div class="form-group filled">
            </div>
         
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

