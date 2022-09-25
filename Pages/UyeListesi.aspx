<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UyeListesi.aspx.cs" Inherits="ASPOrnek.Pages.UyeListesi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Üye Listesi</h2>
            <hr />
        </div>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="grdUyeList" runat="server" CellPadding="4" ForeColor="SkyBlue" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="Turquoise" ForeColor="Salmon" />
                            <EditRowStyle BackColor="White" />
                            <FooterStyle BackColor="Wheat" Font-Bold="True" ForeColor="WhiteSmoke"/>
                            <HeaderStyle BackColor="Wheat" Font-Bold="True" ForeColor="WhiteSmoke" />
                            <PagerStyle BackColor="Wheat" HorizontalAlign="Center" ForeColor="WhiteSmoke" />
                            <RowStyle BackColor="Wheat" ForeColor="WhiteSmoke" />
                            <SelectedRowStyle  BackColor="Yellow" Font-Bold="True" ForeColor="Wheat" />
                            <SortedAscendingCellStyle BackColor="Window"/>
                            <SortedAscendingHeaderStyle BackColor="YellowGreen"/>
                            <SortedDescendingCellStyle BackColor="Window"/>
                            <SortedDescendingHeaderStyle  BackColor="YellowGreen"/>
                           </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
        <div>
            <table>
                <tr>
                    <td>Ad Soyad</td>
                    <td>Telefon</td>
                    <td>Açıklama</td>
                    <td>Mail</td>
                </tr>
                <tbody>
                    <asp:Repeater ID="rptUyeList" runat="server">
                        <ItemTemplate>
                                 <tr>
                    <td style="border:1px solid #4cff00"><%# Eval("Ad") %> <%# Eval("Soyad") %></td>
                    <td style="border:1px solid #4cff00"><%# Eval("Telefon") %></td>
                    <td style="border:1px solid #4cff00"><%# Eval("Aciklama") %></td>
                    <td style="border:1px solid #4cff00"><%# Eval("EMail") %></td>
                    <td style="border:1px solid #4cff00">
                        <a href="duzenle.aspx?id=<%# Eval("ID") %> ">Duzenle</a>
                        <a href="sil.aspx?id=<%# Eval("ID") %> ">Sil</a>
                    </td>
                </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
