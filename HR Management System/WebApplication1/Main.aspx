<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="WebApplication1.Main" %>

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
 body {
    font-family: 'Roboto', sans-serif;
    font-size: 100%;
    background: #f2f4f8;
    overflow-x: hidden;
}
 #page-wrapper {
    min-height: 568px;
    background-color: #f2f4f8;
}
</style>
<body>
    <form id="form2" runat="server">  
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
                <a class="navbar-brand" href="index.html">Wellcome Admin Department</a>
            </div>
                  <ul class="nav navbar-nav navbar-right">	
	      <br>
			       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"   >LOGOUT</asp:LinkButton>
			</ul>
           <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menus">
                        
                        <li>
                            <a href="HR.aspx"><i class="fa fa-laptop nav_icon"></i>Register Employer<span class="fa arrow"></span></a>
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
                         <a href="#1"><i class="fa fa-indent nav_icon"></i>Leave Details<span class="fa arrow"></span></a>
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
                            <a href="#1"><i class="fa fa-indent nav_icon"></i>Course Details<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="Course.aspx">Add Course</a>
                                </li>
                             <li>
                                    <a href="">Edite  Course</a>
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
           <h3>WellCome:
            <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True"></asp:Label>
           </h3> 
                          <div id="divwelcome" runat="server" class="div_header" visible="false"> 
  	 <h3>Deactivate User Details</h3>
  <div class="bs-example4" data-example-id="contextual-table"> 
         <div class="form-group" id="2">
 
              <label class="control-label">Employer ID</label>
                <asp:TextBox ID="TextBox8" runat="server" class="form-control1 ng-invalid ng-valid-email ng-invalid-required ng-touched" Width="500px" Height="40px" ></asp:TextBox>
                 <asp:Button ID="Button3" runat="server" Height="42px" Text="Delete" class="btn btn-primary" Width="85px" OnClick="Button3_Click" />
            </div>
               <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover table-striped" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"  >
                   <Columns>
                        <asp:BoundField DataField="em_Id" HeaderText="em_Id" SortExpression="em_Id" />
                       <asp:BoundField DataField="em_usertype" HeaderText="em_usertype" SortExpression="em_usertype" />
                       <asp:BoundField DataField="em_lname" HeaderText="em_lname" SortExpression="em_lname" />
                       <asp:BoundField DataField="em_password" HeaderText="em_password" SortExpression="em_password" />
                       <asp:BoundField DataField="em_gender" HeaderText="em_gender" SortExpression="em_gender" />
                       <asp:BoundField DataField="em_mobile" HeaderText="em_mobile" SortExpression="em_mobile" />
                       <asp:BoundField DataField="em_address" HeaderText="em_address" SortExpression="em_address" />
                       <asp:BoundField DataField="em_dateofbirth" HeaderText="em_dateofbirth" SortExpression="em_dateofbirth" />
                       <asp:BoundField DataField="em_fname" HeaderText="em_fname" SortExpression="em_fname" />
                       <asp:BoundField DataField="em_email" HeaderText="em_email" SortExpression="em_email" />
                        

                   </Columns>
         <RowStyle CssClass="cursor-pointer" />
        </asp:GridView>
 
               <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [em_Id],[em_usertype], [em_lname], [em_password], [em_gender], [em_mobile], [em_address], [em_dateofbirth], [em_fname], [em_email] FROM [Employee]"></asp:SqlDataSource>
 
 </div>
           <div>
               </div>
     
		<div class="copy">
            <p>HR Management System</p>
	    </div>
		</div>
   </div>
    <!-- /#wrapper -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    </form>
</body>
