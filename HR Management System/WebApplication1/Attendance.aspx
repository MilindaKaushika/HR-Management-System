<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Attendance.aspx.cs" Inherits="WebApplication1.Attendance" %>

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
                <a class="navbar-brand" href="index.html">HR MANAGEMENT SYSTEM</a>
            </div>
                  <ul class="nav navbar-nav navbar-right">	
			
				 <br>		
			<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click1"  >LOGOUT</asp:LinkButton>
	        		</ul>
	      		</li>
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

                </div>
                <!-- /.sidebar-collapse -->
            </div>
        </nav>
                <style type="text/css">
        .Orange
        {
background-color:orange;
        }
        .Red
        {
            background-color:red;
        }
    </style>
        </nav>
        <div id="page-wrapper">
        <div class="col-md-12 graphs">
	   <div class="xs">
     
             <div class="col-md-12 graphs">
	   <div class="xs">
  	    <h3>Attendance Details</h3>
             <div class="bs-example4" data-example-id="contextual-table"> 
     
            <div class="form-group" id="2">  
              <label class="control-label">Employeer Id</label></div>
           <asp:TextBox ID="EmTd" runat="server" Height="40px" class="form-control1 ng-invalid ng-invalid-required"   Width="980px" ng-model="model.password" required=""></asp:TextBox>
                    <div class="form-group" id="3">
              <label class="control-label">Employeer Name</label>
                <br /><asp:TextBox ID="txtEmpName" runat="server" Height="40px" class="form-control1 ng-invalid ng-invalid-required"   Width="980px" ng-model="model.password" required=""></asp:TextBox>
            </div>
       
               <%--<div class="form-group" id="3">
              <label class="control-label">Date</label>
                <br /><asp:TextBox ID="TextBox1" r
                   <br />
                   <asp:TextBox ID="txtDate" runat="server" type="date" Height="40px" class="form-control1 ng-invalid ng-invalid-required"   Width="980px" ng-model="model.password" required=""></asp:TextBox>
            </div>--%>

                
                    <div class="form-group" id="3">
                        <label class="control-label">
                  
                        <br />
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
                            <asp:ListItem Text ="Time IN" Value ="1"></asp:ListItem>
                            <asp:ListItem Text ="Time Out" Value ="2"></asp:ListItem>
                        </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label runat="server" Text="Date" ID="date" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label runat="server" Text="Time" ID="Time" Font-Size="Large"></asp:Label>
        </div>
                        <asp:TextBox ID="TextBox2" runat="server" Height="68px" class="form-control1 ng-invalid ng-invalid-required"   Width="980px" ng-model="model.password" required=""></asp:TextBox>
            </div>
            <div class="form-group filled">
                <asp:Button ID="Button1" class="btn btn-primary"  runat="server" Height="33px" Text="Submit" Width="72px" OnClick="Button1_Click" />
                <asp:Button ID="Button2" class="btn btn-default" runat="server" Height="33px" Text="Cancel" Width="72px" />
            </div>
           <div class="form-group filled">
                
               <asp:GridView ID="GridView1" runat="server" CssClass= "table table-striped table-bordered table-condensed" AutoGenerateColumns="False" Width="979px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound1" DataKeyNames="em_Id,Date" DataSourceID="SqlDataSource2">
                   <Columns>
                       <asp:BoundField DataField="em_Id" HeaderText="em_Id" ReadOnly="True" SortExpression="em_Id" />
                       <asp:BoundField DataField="Date" HeaderText="Date" ReadOnly="True" SortExpression="Date" />
                       <asp:BoundField DataField="Timein" HeaderText="Timein" SortExpression="Timein" />
                       <asp:BoundField DataField="Timeout" HeaderText="Timeout" SortExpression="Timeout" />
                       <asp:BoundField DataField="em_fname" HeaderText="em_fname" SortExpression="em_fname" />
                     
                   </Columns>
               </asp:GridView>
                
               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT [em_Id], [Date], [Timein], [Timeout], [em_fname] FROM [Attendance]"></asp:SqlDataSource>
                
            </div>
        
   </div>
 <div class="copy">
            <p>HR Management Systems"> </p>
<!-- Metis Menu Plugin JavaScript -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
    </form>
</body>
