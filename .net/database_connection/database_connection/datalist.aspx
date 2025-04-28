<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="datalist.aspx.cs" Inherits="database_connection.datalist" %>

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
            <br />
            <asp:DataList ID="DataList1" runat="server" >

                <HeaderTemplate>
                    <table style="width:900px;border:2px double orange">
                        <tr>
                            <td style="width:300px">ID</td>
                            <td  style="width:300px">NAME</td>
                            <td  style="width:300px">AGE</td>
                        </tr>


                    </table>
                    </HeaderTemplate>
                <ItemTemplate>

                    <table style="width:900px;border:2px solid orange;">
                        <tr>

                            <td style="width:300px;">
                                <asp:Label ID="lblid" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                            </td>

                             <td style="width:300px;">
                             <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                </td>
                            
                             <td style="width:300px;">
                             <asp:Label ID="Label3" runat="server" Text='<%#Eval("age") %>'></asp:Label>
                                </td>

                            <td>
                                <a href="update.aspx?id=<%# DataBinder.Eval(Container.DataItem,"Id") %>">Update</a>
                            </td>

                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Remove" CommandName="Remove" CommandArgument='<%# Eval("Id") %>'
                                    onCommand="Button1_command" />
                            </td>
                        </tr>

                    </table>
                </ItemTemplate>


            </asp:DataList>
        </div>
    </form>
</body>
</html>
