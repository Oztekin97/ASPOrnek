<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="PersonelDuzenle.aspx.cs" Inherits="ASPOrnek.Pages.PersonelDuzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    PERSONEL DÜZENLEME SAYFASI
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblID" runat="server" > ID: </asp:Label>
    <asp:TextBox ID="txtId" runat="server" Width="175px" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblAd" runat="server" > Ad Soyad: </asp:Label>
    <asp:TextBox ID="txtAdSoyad" runat="server" Width="175px" ></asp:TextBox>
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
    <asp:Label ID="lblPass" runat="server" > Şifre: </asp:Label>
    <asp:TextBox ID="txtPass" runat="server" style="margin-left: 46px" Width="160px" ></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnPerUpdate" runat="server" Width="250px" Text="Guncelle" OnClick="btnPersonelUpdate_Click"/>
    <asp:Label ID="lblMsg" runat="server" Text=" "></asp:Label>
</asp:Content>
