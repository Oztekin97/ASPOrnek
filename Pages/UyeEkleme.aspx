<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="UyeEkleme.aspx.cs" Inherits="ASPOrnek.Pages.UyeEkleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    PERSONEL EKLEME SAYFASI
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblAd" runat="server" > Ad: </asp:Label>
    <asp:TextBox ID="txtAd" runat="server" Width="175px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LblSoyad" runat="server" > Soyad: </asp:Label>
    <asp:TextBox ID="txtSoyad" runat="server" Height="16px" Width="164px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="LblTelefon" runat="server" > Telefon: </asp:Label>
    <asp:TextBox ID="txtTelefon" runat="server" Width="167px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblEmail" runat="server" > E-Mail: </asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="177px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblAciklama" runat="server" > Açıklama: </asp:Label>
    <asp:TextBox ID="txtAciklama" runat="server" Width="171px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPass" runat="server" > Şifre: </asp:Label>
    <asp:TextBox ID="txtPass" runat="server" style="margin-left: 46px" Width="160px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblTekrarPass" runat="server" > Tekrar Şifre: </asp:Label>
    <asp:TextBox ID="txtTekrarPass" runat="server" Width="163px" ></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnPerEkle" runat="server" Width="250px" Text="KAYDET" OnClick="btnPersonelEkle_Click"/>
    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
</asp:Content>
