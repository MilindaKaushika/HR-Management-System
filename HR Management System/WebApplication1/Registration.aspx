<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebApplication1.Registration" %>

<!DOCTYPE html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	body {
   background-image: url("Images/Login.jpg");

}
    .login-form {
		width: 340px;
    	margin: 50px auto;
	}
    .login-form{
    	margin-bottom: 15px;
        background: #fff;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
        
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
    .auto-style1 {
        text-align: left;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<div class="body">
    <form id="form1" runat="server">
    <div>
    <div class="login-form">
        <h2 class="text-center">Registration</h2>       
        <div class="form-group">
            &nbsp;Fist Name<asp:TextBox ID="TextBox1" class="form-control" runat="server" ng-model="model.name" required="" Height="34px" Width="275px" ></asp:TextBox>
        </div>
        <div class="form-group">
            &nbsp;Last Name<asp:TextBox ID="TextBox2" class="form-control" runat="server" Height="34px" ng-model="model.name" required=""  Width="275px" ></asp:TextBox>
        </div>
         
          <div class="form-group">User Type
                <asp:DropDownList ID="DropDownList1" width="275px" Height="40px" runat="server" DataTextField="em_fname" DataValueField="em_fname" ng-model="model.password" required="" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>--Select User Type--</asp:ListItem>
                    <asp:ListItem >Emplyee</asp:ListItem>
                    <asp:ListItem >Other</asp:ListItem>
                  
                </asp:DropDownList>
            </div>
         <div class="form-group">Department Name
                <asp:DropDownList ID="DropDownList2" width="275px" Height="40px" runat="server" ng-model="model.password" required=""  >
                    <asp:ListItem>--Select User Type--</asp:ListItem>
                 
                  
                </asp:DropDownList>
            </div>
        <div class="form-group">
            &nbsp;Password<asp:TextBox ID="TextBox6" class="form-control" runat="server" Height="34px"  TextMode="Password" ng-model="model.name" required="" Width="275px" ></asp:TextBox>
        </div>
         <div class="auto-style1">
            &nbsp;Gender&nbsp;
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
                     <asp:ListItem>Male</asp:ListItem>  
                    <asp:ListItem>Female</asp:ListItem>
   
                 </asp:RadioButtonList>
        </div>
         <div class="form-group">
            &nbsp;Mobile<asp:TextBox ID="TextBox3" class="form-control" runat="server" Height="34px" ng-model="model.name" required=""  Width="275px" ></asp:TextBox>
        </div>
        <div class="form-group">
            &nbsp;Address<asp:TextBox ID="TextBox7" class="form-control" runat="server" Height="34px"  ng-model="model.name" required="" Width="275px" ></asp:TextBox>
        </div>
        <div class="form-group">
            &nbsp;Email<asp:TextBox ID="TextBox5" class="form-control" runat="server" Height="34px"  ng-model="model.name" TextMode="Email" required="" Width="275px" ></asp:TextBox>
        </div>
         <div class="form-group">
            &nbsp;Date of Birth<asp:TextBox ID="TextBox4"  class="form-control"  runat="server" Height="34px" TextMode="Date" ng-model="model.name" required="" Width="275px" ></asp:TextBox>
        </div>
       
        
         
        <div class="form-group">
 <asp:Button ID="Button1" runat="server" Height="36px"  Text="Submit" class="btn btn-primary btn-block" OnClick="Button1_Click" />
		</form>
</html>
