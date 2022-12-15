<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="task_14_DEC.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"/>
    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />

             <asp:Label ID="Label2" runat="server" Text="Label">age</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />

             <asp:Label ID="Label3" runat="server" Text="Label">city</asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />

             <asp:Label ID="Label4" runat="server" Text="Label">phonenumber</asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />


            <asp:Label ID="Label5" runat="server" Text="Label">uploud your image</asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server" />

            <asp:Button ID="Button2" runat="server" Text="uploud" OnClick="Button1_Click" />
            <br /><br />

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
</body>
</html>
