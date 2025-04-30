<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="registration.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="display:flex;align-items:center;justify-content:center;">
        <div style="background-color:burlywood;border:2px solid blue; padding:10px;">


            <asp:Label ID="Label1" runat="server" Style="color:red;font-size:2.2rem;text-align:center" Text="Registration Form"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Designation"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Trainer</asp:ListItem>
                <asp:ListItem>Trainee</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="User ID"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Subject"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                <asp:ListItem>Asp.net</asp:ListItem>
                <asp:ListItem>Python</asp:ListItem>
                <asp:ListItem>PL-SQL</asp:ListItem>
                <asp:ListItem>HTML</asp:ListItem>
                <asp:ListItem>CSS</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Button style="margin-left:auto;margin-right:auto;" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
            <br />
            <br />
          


        </div>
    </form>
</body>
</html>
