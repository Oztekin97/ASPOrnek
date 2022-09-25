<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPOrnek.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2">Üye Girişi</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtKA" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Sifre:</td>
                    <td> <asp:TextBox ID="txtPass" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click"/>
                         <asp:Button ID="btnKaydet" runat="server" Text="Kayıt Ol" OnClick="btnKaydet_Click"/>
                        <asp:Label ID="lblHata" runat="server" Text="" ForeColor="Red" Font-Bold="true"/>
                        <asp:Label ID="LblThrow" runat="server" Text="" ForeColor="Yellow" Font-Bold="true"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
