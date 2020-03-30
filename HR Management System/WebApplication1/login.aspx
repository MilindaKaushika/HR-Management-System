<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

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
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<div class="body">
    <form id="form1" runat="server">
    <div>
    <div class="login-form">
        <h2 class="text-center">HR System</h2>       
        <div class="form-group">
            &nbsp;Username<asp:TextBox ID="TextBox1" ng-model="model.name" required="" class="form-control" runat="server" Height="34px" ></asp:TextBox>
        </div>
        <div class="form-group">
            &nbsp;Password<asp:TextBox ID="TextBox2" class="form-control" runat="server" ng-model="model.name" required="" Height="34px" TextMode="Password" OnTextChanged="TextBox2_TextChanged" ></asp:TextBox>
        </div>
        <div class="form-group">
            
            <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="Submit" class="btn btn-primary btn-block" />
        
		    <br />
        
		<ul class="new">
	
			<li class="new_right"><p class="sign">New here ?<a href="Registration.aspx"> Sign Up</a></p>
            </li>
		
		</ul>

    </form>
</html>
