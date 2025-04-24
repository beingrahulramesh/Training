<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="radiob.aspx.cs" Inherits="WebApplication1.radiob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="rbt1" runat="server" GroupName="gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="male" />
            <br />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" Text="Female" />
            <br />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="gender" Text="Others" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
