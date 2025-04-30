<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="registration.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="display:flex;align-items:center;justify-content:center;">
        <div style="border:2px  double blue;padding:8px;">


            <br />
            <asp:Label style="font-size:40px;color:darkorange;text-align:center;" ID="Label1" runat="server" Text="LOGIN PAGE"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" onmouseover="this.style.backgroundColor='red';" 
    onmouseout="this.style.backgroundColor='initial';" Style="background-color:aquamarine;border-radius:3px;padding:5px;" runat="server" Text="Login" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Dont have an account? "></asp:Label>
            <asp:LinkButton ID="LinkButton1" runat="server">Register</asp:LinkButton>
            <br />
            <br />
            <br />
            <br />


        </div>
    </form>
</body>
</html>
