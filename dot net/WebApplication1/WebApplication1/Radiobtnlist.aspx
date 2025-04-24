<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Radiobtnlist.aspx.cs" Inherits="WebApplication1.Radiobtnlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">

                <asp:Label ID="Label1" runat="server" Text="Radio button list"></asp:Label>
<br />
<br />
<br />
<asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
    <asp:ListItem Value="1">Male</asp:ListItem>
    <asp:ListItem Value="2">Female</asp:ListItem>
    <asp:ListItem Value="3">Others</asp:ListItem>
</asp:RadioButtonList>
<br />
<br />
                <br />
<br />
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
            
        </div>
        <asp:Panel ID="Panel2" runat="server">
            <br />
            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
