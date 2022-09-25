<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ASPOrnek.Pages.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Programlama Dersine Hoşgeldiniz</title>
    <link href="../css/style.css" rel="stylesheet" />
    <script src="../js/js.js"></script>
    <style type="text/css">
        .auto-style1 {
            height: 241px;
        }
    </style>
</head>
<body onload="Msg">
    <form id="form1" runat="server">
        <div>
            <b>Merhaba Üye Kayıt Sayfasına Hoşgeldiniz</b>
            <table id="tbl">
                <tr>
                    <td colspan="2" style="text-align:center">Üye Kayıt Sayfası</td>
                </tr>
                <tr>
                    <td> Ad </td>
                    <td>
                        <asp:TextBox ID="txtAd" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="rfvAd" runat="server" ControlToValidate="txtAd" ErrorMessage="Boş geçilemez"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td> Soyad </td>
                    <td>
                        <asp:TextBox ID="txtSoyad" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvSoyad" runat="server" ControlToValidate="txtSoyad" ErrorMessage="Boş geçilemez"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td> Telefon </td>
                    <td>
                        <asp:TextBox ID="txtTel" runat="server" TextMode="Phone"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvTel" runat="server" ControlToValidate="txtTel" ErrorMessage="Boş geçilemez"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td> E-Mail </td>
                    <td>
                        <asp:TextBox ID="txtMail" runat="server" TextMode="Email"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" ErrorMessage="Mail formatına uygun değil" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                   <asp:RequiredFieldValidator ID="rfvMail" runat="server" ControlToValidate="txtMail" ErrorMessage="Boş geçilemez" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                </tr>
                         <tr>
                   <td> Açıklama
                       <asp:TextBox ID="txtAciklama" runat="server" Height="61px" Width="362px" TextMode="MultiLine" />
                        <asp:RequiredFieldValidator ID="rfvAciklama" runat="server" ControlToValidate="txtAciklama" ErrorMessage="Boş geçilemez"></asp:RequiredFieldValidator>
                   </td>
                </tr>
                 <tr>
                    <td class="auto-style1"> Sifre </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtSifre" runat="server" TextMode="Password"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvSifre" runat="server" ControlToValidate="txtSifre" ErrorMessage="Boş geçilemez"></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                <tr>
                    <td> Tekrar Sifre </td>
                    <td>
                       <asp:TextBox ID="txtTekrarSifre" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="cvSifre" runat="server" ErrorMessage="Şifreler Aynı olmalı" ControlToValidate="txtTekrarSifre" ControlToCompare="txtSifre"></asp:CompareValidator>
                    </td>
                </tr> 
                   <tr>
                   <td colspan="2">
                       <asp:Button ID="btnKaydet" runat="server" Text="KAYDET" OnClick="btnKaydet_Click" />
                   </td>
                </tr> 
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
