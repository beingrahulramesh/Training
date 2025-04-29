<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiview.aspx.cs" Inherits="WebApplication1.multiview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="View1"></asp:Label>
                    <br />
                    <br /><p>this is first view</p>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="goto view2" OnClick="Button1_Click" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label2" runat="server" Text="View2"></asp:Label>
                    <br />
                    <br /><p>this is second view</p>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="goto view3" OnClick="Button2_Click" />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Text="View3"></asp:Label>
                    <br />
                    <br /><p>this is third view</p>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="goto view1" OnClick="Button3_Click" />
                </asp:View>

            </asp:MultiView>

        </div>
    </form>
</body>
</html>
