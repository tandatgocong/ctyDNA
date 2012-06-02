﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="tabBienDocCS.ascx.cs" Inherits="BaoCao_Web.View.tabDHN.tabBienDocCS" %>
<link href="../../StyleSheet/StyleSheet.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    .style2
    {
        height: 40px;
    }
    .style3
    {
        width: 75px;
        height: 40px;
    }
    .style4
    {
        width: 66px;
        height: 40px;
    }
    .style5
    {
        width: 66px;
    }
    .style6
    {
         width: 119px;
        height: 26px;
    }
    .style7
    {
         width: 100px;
        height: 26px;
    }
    .style9
    {
        width: 100px;
        height: 28px;
        text-align:right;
        margin-right:10px;
    }
    </style>

<div class="block block_left events" style="width: 1200px; float:left;">
        <table style="font-size:14px; font-family: Times New Roman;">
            <tr>
                <td class="style2"> 
                    &nbsp;</td>
                <td class="style2"> 
                    &nbsp;</td>
                <td class="style2"> <asp:Label ID="Label1" runat="server" Text="ĐỢT ĐỌC SỐ  : " 
                        CssClass="label"></asp:Label></td>
                <td class="style3">
                    <asp:DropDownList ID="dot" runat="server" Height="20px" Width="56px">
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style2"> 
                    <asp:Label ID="Label2" runat="server" Text="KỲ " 
                        CssClass="label"></asp:Label></td>
                <td class="style4">
                    <asp:DropDownList ID="ky" runat="server" Height="20px" Width="47px">
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="NĂM" 
                        CssClass="label"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="nam" runat="server" Height="20px" Width="50px"></asp:TextBox>
                </td>
                <td class="style2">&nbsp;<asp:Button ID="btXemBangKe" runat="server" Text="XEM THÔNG TIN" 
                        CssClass="button" onclick="btXemBangKe_Click" /></td>
            </tr>
        </table>

 	<h3>&nbsp;
        </h3>
	<div class="block_content">
        
            <table cellpadding="0" cellspacing="0" style="width:100%; font-family:Times New Roman; font-size:15px;" class="table_list" >
              <tbody>
                  <tr class="head" >
                    <td class="style6" rowspan="2"><asp:Label ID="lbTieuDe" runat="server" Text="TỔ ĐỌC SỐ"></asp:Label> 
                        </td>
                    <td class="style7" colspan="2">
                        <b>KỲ TRƯỚC</b></td>
                     
                    <td class="style7" colspan="2">
                       <b>KỲ NÀY</b></td>
                     <td class="style7" colspan="2">
                       <b>TĂNG/GIẢM</b></td>
                 
                     <td class="style7" colspan="2">
                       <b>CÙNG KỲ NĂM TRƯỚC</b></td>
                     <td class="style7" colspan="2">
                       <b>TĂNG GIẢM</b></td>
                   
                </tr>
                 <tr class="head1">
                  
                    <td class="style9">
                        ĐHN</td>
                    <td class="style9">
                        SẢN LƯỢNG</td>
                  <td class="style9">
                        ĐHN</td>
                    <td class="style9">
                        SẢN LƯỢNG</td>
                    <td class="style9">
                        ĐHN</td>
                    <td class="style9">
                        SẢN LƯỢNG</td>
                    <td class="style9">
                        ĐHN</td>
                    <td class="style9">
                        SẢN LƯỢNG</td>
                    <td class="style9">
                        ĐHN</td>
                    <td class="style9">
                        SẢN LƯỢNG</td>
                </tr>
              </tbody>
            </table>
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Height="312px" 
                Width="1193px" BorderWidth="0px">
        </asp:Panel>
   </div>
 </div>