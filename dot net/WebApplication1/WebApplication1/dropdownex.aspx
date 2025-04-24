<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownex.aspx.cs" Inherits="WebApplication1.dropdownex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Enter the text"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button Style="border-radius:5px;padding:8px;background-color:aqua;" ID="Button1" runat="server" Text="Copy to dropdown" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <br />
                <br />
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel2" runat="server">
            <br />
            <asp:Label ID="Label2" runat="server" Text="Select an item"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>SG</asp:ListItem>
                <asp:ListItem>Sangeeth</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Christy</asp:ListItem>
                <asp:ListItem>Devan</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Copy to textbox" />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <br />
            <asp:Label ID="Label3" runat="server" Text="select an item"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Kammi</asp:ListItem>
                <asp:ListItem>Appu</asp:ListItem>
                <asp:ListItem>Kuttu</asp:ListItem>
                <asp:ListItem>Thakku</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server">
            <br />
            <br />
            <asp:DropDownList ID="DropDownList4" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Chappathi</asp:ListItem>
                <asp:ListItem>Porota</asp:ListItem>
                <asp:ListItem>Biriyani</asp:ListItem>
                <asp:ListItem>Alfam</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Remove" />
            <br />
            <br />
        </asp:Panel>
    </form>
</body>
</html>
