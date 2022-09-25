<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Site1.Master" AutoEventWireup="true" CodeBehind="UyelerinListesi.aspx.cs" Inherits="ASPOrnek.Pages.UyelerinListesi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Personel Listesi
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Personel Listesi</h1>
    <br />
    <br />
    <asp:GridView ID="grdPersonelList" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  >
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="false" ReadOnly="True" SortExpression="ID" /> 
            <asp:BoundField DataField="Ad" HeaderText="Ad"  SortExpression="Ad" /> 
            <asp:BoundField DataField="Soyad" HeaderText="Soyad"  SortExpression="Soyad" /> 
            <asp:BoundField DataField="Telefon" HeaderText="Telefon"  SortExpression="Telefon" /> 
            <asp:BoundField DataField="Aciklama" HeaderText="Aciklama"  SortExpression="Aciklama" /> 
            <asp:BoundField DataField="EMail" HeaderText="EMail"  SortExpression="EMail" /> 
            <asp:BoundField DataField="pass" HeaderText="pass"  SortExpression="pass" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:con %>" SelectCommand="SELECT * FROM [uyeler]"></asp:SqlDataSource>

</asp:Content> 
