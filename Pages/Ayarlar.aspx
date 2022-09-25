<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="ASPOrnek.Pages.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    AYARLAR SAYFASI 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 >BİLGİLERİ AYARLAMA SAYFASI</h1>
    <br />
     <asp:Label ID="lblEmail" runat="server" > E-Mail: </asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="189px" ></asp:TextBox>
    <br />
    <br />
       <asp:Label ID="lblPass" runat="server" > Şifre: </asp:Label>
    <asp:TextBox ID="txtPass" runat="server" style="margin-left: 46px" Width="160px" ></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnPerDuzenle" runat="server" Width="250px" Text="Duzenle" OnClick="btnPersonelDuzenle_Click"/>
    <br />
    <br />
    <asp:Button ID="btnPersonelSil" runat="server" Width="250px" Text="Sil" OnClick="btnPersonelSil_Click"/>
    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
</asp:Content>
