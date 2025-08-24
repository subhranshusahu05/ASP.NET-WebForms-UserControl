<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FinalOut.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<%@ Register Src="~/WebUserControl1.ascx" TagName="usercalender" TagPrefix="UC1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Registation Form</h3>
            Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
            Email:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />

            <UC1:usercalender ID="ucdate" runat="server" />
            <br />

            <asp:Button ID="Button1" runat="server" Text="Clear" OnClick="Button1_Click" />


            Password:<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        </div>
    </form>
</body>
</html>
