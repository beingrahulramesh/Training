<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="examplelist.aspx.cs" Inherits="WebApplication1.examplelist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>


        <br />
        <asp:ListBox ID="ListBox1" runat="server">
            <asp:ListItem>item1</asp:ListItem>
            <asp:ListItem>item1</asp:ListItem>
            <asp:ListItem>item1</asp:ListItem>
        </asp:ListBox>
        <br />
        <asp:BulletedList ID="BulletedList1" runat="server" Width="1083px">
            <asp:ListItem>item1</asp:ListItem>
            <asp:ListItem>item2</asp:ListItem>
            <asp:ListItem>item3</asp:ListItem>
            <asp:ListItem>item4</asp:ListItem>
        </asp:BulletedList>
        <br />
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <br />
        <br />
        <br />
        <br />


    </div>
    </form>
</body>
</html>
