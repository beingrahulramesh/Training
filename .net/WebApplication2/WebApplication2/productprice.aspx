<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productprice.aspx.cs" Inherits="WebApplication2.productprice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#0099FF">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Select product"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Value="-1">please select a product</asp:ListItem>
                    <asp:ListItem>laptop</asp:ListItem>
                    <asp:ListItem>smartphone</asp:ListItem>
                    <asp:ListItem>drone</asp:ListItem>
                    <asp:ListItem>tablet</asp:ListItem>
                </asp:DropDownList>
                &nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server"></asp:Label>
                <br />
                <br />
            </asp:Panel>
        </div>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel2" runat="server" BackColor="#CCFFFF">
            <asp:Label ID="Label2" runat="server" Text="cost per unit"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label3" runat="server" Text="quantity"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
        </asp:Panel>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <asp:Panel ID="Panel3" runat="server" BackColor="#FFCCCC">
            <asp:Label ID="Label4" runat="server" Text="Total cost"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </asp:Panel>
    </form>
</body>
</html>
