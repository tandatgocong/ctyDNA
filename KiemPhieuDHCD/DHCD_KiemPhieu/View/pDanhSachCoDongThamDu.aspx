﻿<%@ Page Title="" Language="C#" MasterPageFile="~/View/HomePage.Master" AutoEventWireup="true" CodeBehind="pDanhSachCoDongThamDu.aspx.cs" Inherits="DHCD_KiemPhieu.View.pDanhSachCoDongThamDu" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script type="text/javascript">
            function Focus(object) {
                object.value = "";
            }

    </script>

    <style type="text/css">
        .style2
        {
            width: 160px;
        }
        .style4
        {
            width: 165px;
        }
        .style5
        {
            width: 147px;
        }
    </style>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script language="javascript" type="text/javascript">
     window.document.getElementById("HOME").className = "top_link";
     window.document.getElementById("CODONG").className = "current_link";
     window.document.getElementById("KIEMPHIEU").className = "top_link";
     window.document.getElementById("BIEUQUYET").className = "top_link";
     window.document.getElementById("BAUCU").className = "top_link"; 
    </script>
     <div class="title_page" style=" margin-top:10px; height: 26px; text-align:center;"><asp:Label ID="title" runat="server" 
        Text="..: DANH SÁCH CỔ ĐÔNG THAM DỰ ĐẠI HỘI :.."></asp:Label>
    </div>
    <br />
    <table style="width:100%;">
        <tr>
            <td>
     <table cellpadding="0" cellspacing="0" style="font-family:Times New Roman; font-size:15px; margin-left:40px;" class="table_list" >
        <tbody>
           <tr class="head1">
               <td class="style11" style="border-right:2px #99cc99 solid;background-color:Lavender; border-bottom: 1px solid;">NHẬP SỐ THỨ TỰ CỔ ĐÔNG HOẶC MÃ CỔ ĐÔNG :</td>
                <td class="style10" style="border-right:2px #99cc99 solid; background-color:Lavender; border-bottom: 1px solid;">
                                            <asp:TextBox ID="txtCoDong" runat="server"  onfocus="Focus(this)" AutoPostBack="True" 
                                                ontextchanged="txtCoDong_TextChanged"></asp:TextBox>
               </td>
             </tr>
          </tbody>
    </table>
    
            </td>
        </tr>
        <tr>
            <td>

            <table cellpadding="0" cellspacing="0" style="font-family:Times New Roman; font-size:15px; margin-left:370px;" class="table_list_1" >
        <tbody>
           <tr class="head1" style="height:17px;";>
               <td class="style2" style="border-right:1px #FF0000 solid;  background-color:#CCFFFF; font-size:large; border-bottom: 2px #FF0000	 solid; " colspan="2">
                <center> TỔNG CỘNG CỔ ĐÔNG THAM DỰ </center></td>
             </tr>
           <tr class="head1">
               <td class="style5" 
                   style="border-right:2px #FF0000 solid; border-bottom: 1px solid; ">                                           
                                            SỐ LƯỢNG CỔ ĐÔNG :</td>
               <td class="style4" 
                   
                   style="border-right:1px #FF0000 solid; border-bottom: 1px solid;background-color:#CCFFFF;">                                           
                                          <center> <asp:Label ID="tc_sl" runat="server" Font-Bold="True" Font-Size="X-Large" 
                                                ForeColor="Red" Text="0"></asp:Label></center> 
                                            </td>
             </tr>
           
           <tr class="head1">
               <td class="style5" 
                   style="border-right:2px #FF0000 solid; border-bottom: 1px solid;">                                        
                                            TỔNG SỐ CỔ PHIẾU :</td>
               <td class="style4" 
                   
                   style="border-right:1px #FF0000 solid; border-bottom: 1px solid;background-color:#CCFFFF;">                                           
                                           <center><asp:Label ID="tc_cp" runat="server" Font-Size="X-Large" ForeColor="Red" 
                                               Text="0"></asp:Label></center>
               </td>
             </tr>
           
              <tr class="head1">
               <td class="style5" 
                   style="border-right:2px #FF0000 solid; border-bottom: 1px solid;">                                        
                                            TỈ LỆ CỔ PHIẾU :</td>
               <td class="style4" 
                   
                      style="border-right:1px #FF0000 solid; border-bottom: 1px solid;background-color:#CCFFFF;">                                           
                                           <center><asp:Label ID="tc_tl" runat="server" Font-Size="X-Large" ForeColor="Red" 
                                               Text="0"></asp:Label></center>
                  </td>
             </tr>

          </tbody>
    </table>

                
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
        BorderStyle="None" BorderWidth="1px" CellPadding="4" PageSize="1000" style="margin-right: 0px" 
        Width="100%" onrowdatabound="GridView1_RowDataBound" 
        ShowFooter="True" onrowcommand="GridView1_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="STT">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("STT") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("STT") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="8px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="STTCD" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("STTCD") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("STTCD") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="MÃ CỔ ĐÔNG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MACD") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MACD") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TÊN CỔ ĐÔNG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("TENCD") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("TENCD") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle VerticalAlign="Middle" Width="150px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CMND/GPKD">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("CMND") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("CMND") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NGÀY CẤP" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("NGAYCAP") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" 
                        Text='<%# Bind("NGAYCAP", "DD/MM/YYYY") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="NƠI CẤP" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("NOICAP") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("NOICAP") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="70px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ĐỊA CHỈ">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("DIACHI") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("DIACHI") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle VerticalAlign="Middle" Width="270px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CP GIAO DỊCH">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("CDGD") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbCPGD" runat="server" Text='<%# Bind("CDGD","{0:0,0}") %>'></asp:Label>
                </FooterTemplate>
                <HeaderTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: center">
                                CP GIAO DỊCH</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="TongCPGD" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("CDGD","{0:0,0}") %>'></asp:Label>
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="CP PHONG TỎA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("PHONGTOA") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbCPPT" runat="server" Text='<%# Bind("PHONGTOA","{0:0,0}") %>'></asp:Label>
                </FooterTemplate>
                <HeaderTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: center">
                                CP PHONG TỎA</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="TongCPPT" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("PHONGTOA","{0:0,0}")%>'></asp:Label>  
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="90px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="TỔNG CỘNG">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("TONGCD") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:Label ID="lbCPTC" runat="server" Text='<%# Bind("TONGCD","{0:0,0}") %>'></asp:Label>
                </FooterTemplate>
                <HeaderTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td style="text-align: center">
                                TỔNG CỘNG</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:Label ID="TongCong" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </HeaderTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("TONGCD","{0:0,0}")%>'></asp:Label>
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:LinkButton ID="TRONGAI" runat="server" 
                        CommandArgument='<%# Bind("MACD") %>' CommandName="TRONGAI" ForeColor="Blue" 
                        onclientclick="if(confirm('Bạn có muốn xóa ?') == false)return false;">Xóa</asp:LinkButton>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#330099" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        <SortedAscendingCellStyle BackColor="#FEFCEB" />
        <SortedAscendingHeaderStyle BackColor="#AF0101" />
        <SortedDescendingCellStyle BackColor="#F6F0C0" />
        <SortedDescendingHeaderStyle BackColor="#7E0000" />
    </asp:GridView>
    <br />
    <br />
    <br />
    <br />
    </asp:Content>
