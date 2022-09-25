<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="ASPOrnek.Pages.Profil" %>

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
                    <td colspan="2">Üye Bilgileri</td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ad Soyad:</td>
                    <td> <asp:TextBox ID="txtAdSoyad" runat="server"></asp:TextBox></td>
                </tr>
                   <tr>
                    <td>Telefon:</td>
                    <td> <asp:TextBox ID="txtTel" runat="server"></asp:TextBox></td>
                </tr>
                   <tr>
                    <td>Sifre:</td>
                    <td> <asp:TextBox ID="txtSifre" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCikis" runat="server" Text="Çıkış" OnClick="btnCikis_Click"/>
                      
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
