<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forumRegistration.aspx.cs" Inherits="WebApplication1.forumRegistration" %>


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
        <h2 class="text-center">Forum Registration</h2>       
        <div class="form-group">
            User Name<asp:TextBox ID="TextBox1" class="form-control" runat="server" ng-model="model.name" required="" Height="34px" Width="275px" ></asp:TextBox>
        </div>
        <div class="form-group">
            Password<asp:TextBox ID="TextBox2" class="form-control" runat="server" Height="34px" TextMode="Password" ng-model="model.name" required=""  Width="275px" ></asp:TextBox>
        </div>
         
        <div class="form-group">
            Full Name<asp:TextBox ID="TextBox6" class="form-control" runat="server" Height="34px"  ng-model="model.name" required="" Width="275px" ></asp:TextBox>
        </div>
         <div class="auto-style1">
            &nbsp;Gender&nbsp;
             <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;
             <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" />
        </div>
        
         <div class="form-group">
            &nbsp;Date of Birth<asp:TextBox ID="TextBox4" class="form-control"  TextMode="date" runat="server" Height="34px"  ng-model="model.name" required="" Width="275px" ></asp:TextBox>
        </div>
       
        <div class="form-group">
            &nbsp;Email<asp:TextBox ID="TextBox5" class="form-control" runat="server" Height="34px"  ng-model="model.name" TextMode="Email" required="" Width="275px" ></asp:TextBox>
        </div>
         
        <div class="form-group">
 <asp:Button ID="Button1" runat="server" Height="36px"  Text="Submit" class="btn btn-primary btn-block" OnClick="Button1_Click"  />
		</form>
</html>
