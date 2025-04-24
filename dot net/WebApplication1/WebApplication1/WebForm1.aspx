<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <p style="height: 180px; width: 936px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="Txtname" TextMode="MultiLine" runat="server" BackColor="#CCFF99" BorderColor="Red" OnTextChanged="TextBox1_TextChanged">rahul
</asp:TextBox>
        </p>
        <p style="height: 187px; width: 1128px">
            <asp:Label ID="Label1" runat="server" BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px" ForeColor="#0033CC" Height="20%" Text="ENTER NAME" Width="90%"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="85px">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:ListBox>
        </p>
        <p style="height: 180px; width: 936px">
            &nbsp;</p>
    </form>
</body>
</html>
