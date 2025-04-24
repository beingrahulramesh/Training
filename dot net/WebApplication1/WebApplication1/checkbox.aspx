<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checkbox.aspx.cs" Inherits="WebApplication1.checkbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>
        <br />
    </p>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="#66CCFF">
            <br />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" Text="option1" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="option2" />
            <br />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" Text="option3" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </asp:Panel>
        
        <div>
            <asp:Panel ID="Panel2" runat="server" BackColor="#CCFFCC">
                <br />
                <br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                </asp:CheckBoxList>
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
