<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exampleimage.aspx.cs" Inherits="WebApplication1.exampleimage" %>

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
            <asp:Image ID="Image1" runat="server" Height="104px" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKJuRKS0tj-qThYhmiwiK04HAN6L0bpKRlDw&amp;s" Width="113px" />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton1" runat="server" Height="121px" ImageUrl="https://phantom-marca.unidadeditorial.es/6eaf2c066e46ec7d77b0f0722cdcdbe6/resize/828/f/jpg/assets/multimedia/imagenes/2023/11/19/17003735708013.jpg" OnClick="ImageButton1_Click" Width="117px" />
        </div>
    </form>
</body>
</html>
