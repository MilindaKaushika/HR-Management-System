<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="leaveapprovel.aspx.cs" Inherits="WebApplication1.leaveapprovel" %>

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
			       <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" >LOGOUT</asp:LinkButton>
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
      <style type="text/css">
        .Orange
        {
background-color:orange;
        }
        .Red
        {
            background-color:red;
        }
         .Gold
        {
            background-color:gold;
        }
    </style>
      </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
     
         
  	    <h3>Employeer Leave Approval</h3>
             <div class="bs-example4" data-example-id="contextual-table"> 
    
              <asp:GridView ID="GridView2" runat="server"   CssClass="table table-hover table-striped"  AutoGenerateColumns="False" DataKeyNames="leave_Id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" Width="502px">
                  <Columns>
                
                      <asp:BoundField DataField="leave_Id" HeaderText="leave_Id" InsertVisible="False" ReadOnly="True" SortExpression="leave_Id" />
                
                      <asp:BoundField DataField="em_fname" HeaderText="em_fname" SortExpression="em_fname" />
                      <asp:BoundField DataField="leave_type" HeaderText="leave_type" SortExpression="leave_type" />
                      <asp:BoundField DataField="DepName" HeaderText="DepName" SortExpression="DepName" />
                      <asp:BoundField DataField="leave_to" HeaderText="leave_to" SortExpression="leave_to" />
                      <asp:BoundField DataField="leave_from" HeaderText="leave_from" SortExpression="leave_from" />
                      <asp:BoundField DataField="leave_reason" HeaderText="leave_reason" SortExpression="leave_reason" />
                      <asp:BoundField DataField="leave_days" HeaderText="leave_days" SortExpression="leave_days" />
                      <asp:BoundField DataField="em_Apporel" HeaderText="em_Approval" SortExpression="em_Apporel" />
                      <asp:CommandField ButtonType="Button" ControlStyle-CssClass="btn btn-primary"  HeaderText="Edit" ShowHeader="True" ShowSelectButton="True" >

                            </asp:CommandField>
                  </Columns>
                         <RowStyle CssClass="cursor-pointer" />
              </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT * FROM [Leave]"></asp:SqlDataSource>
           </div>
           <div>
               </div>
       
           <div class="col-md-12 graphs">
	   <div class="xs">
 
             <div class="bs-example4" data-example-id="contextual-table"> 
          <fieldset>
                <div class="form-group" id="2">  
                 <label class="control-label">Employeer ID</label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="form-group" id="2">  
                 <label class="control-label">Employeer Name</label>
                 <asp:TextBox ID="TextBox1" runat="server" type="text" Height="40px"  Width="980px" Enabled="False"></asp:TextBox>
            </div>
            <div class="form-group" id="3">
              <label class="control-label">Employeer Leave Days</label>
                 <asp:TextBox ID="TextBox2" runat="server" type="text" Height="40px"  Width="980px"  Enabled="False"></asp:TextBox>
            </div>

                <div class="form-group filled">
 <label class="control-label">Leave Approvel</label>
            
                    <br />           
                    <asp:DropDownList ID="DropDownList1" width="980px" Height="40px" runat="server"  required="">
                  <asp:ListItem>--Select Leave Approvel--</asp:ListItem>
                        <asp:ListItem>Approval</asp:ListItem>
                        <asp:ListItem>Reject</asp:ListItem>
                </asp:DropDownList>

            </div>
              <div class="form-group">
                
                   
                  <asp:Button ID="Button1" runat="server"  class="btn btn-primary" Height="38px" Text="Submit" Width="85px" OnClick="Button1_Click"  />
                  <asp:Button ID="Button2" runat="server" Height="38px" class="btn btn-default" Text="Clear" Width="85px" />
                
                   
            </div>
          </fieldset>
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
