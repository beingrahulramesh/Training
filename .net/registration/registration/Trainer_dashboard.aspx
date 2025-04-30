<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trainer_dashboard.aspx.cs" Inherits="registration.Trainer_dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            <asp:Label ID="Label3" runat="server" Text="Question Add"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Add Option"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Add Option" />
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Submit" />

        </div>
    </form>
</body>
</html>
