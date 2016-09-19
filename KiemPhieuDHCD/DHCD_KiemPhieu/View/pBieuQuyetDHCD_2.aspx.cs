﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace DHCD_KiemPhieu.View
{
    public partial class pBieuQuyetDHCD_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            MaintainScrollPositionOnPostBack = true;
            if (IsPostBack)
                return;
            Binddata();
            this.txtCoDong.Text = "";
            this.tungay.Text = DateTime.Now.Date.ToString("dd/MM/yyyy");

            
        }


        private void Binddata()
        {
            DataTable tb = Class.LinQConnection.ExecuteStoredProcedure("p_BIEUQUYET", DropDownList1.SelectedValue.ToString(), this.tungay.Text);
            DataListKQ.DataSource = tb;
            DataListKQ.DataBind();
            Session["TABLE"] = tb;
            LoadKhongDongY();

            this.tc_td.Text = String.Format("{0:0,0}", Class.LinQConnection.ReturnResult("SELECT COUNT(TONGCD) FROM DSCODONG_THAMDU"));

            double cp = Class.LinQConnection.ReturnResult("SELECT SUM(TONGCD) FROM DSCODONG_THAMDU");
            this.tc_cophieu.Text = String.Format("{0:0,0}", cp);

            Session["TS"] = this.tc_cophieu.Text;

            /// TỈ LỆ
            double tl = cp / Class.LinQConnection.ReturnResult("SELECT SUM(TONGCD) FROM DSCODONG");
            tl_cophieu.Text = String.Format("{0:0.##}", tl * 100) + "%";

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Binddata();
        }

        protected void btCapNhat2_Click(object sender, EventArgs e)
        {
        }

        protected void G_KDY_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Class.LinQConnection.ExecuteCommand("DELETE FROM BIEUQUYET WHERE ID='" + e.CommandArgument.ToString() + "'");
            Binddata();
        }

        void loadThongTinCD()
        {
            string sql = "SELECT * FROM DSCODONG WHERE ( STTCD=REPLACE('" + this.txtCoDong.Text.Replace(" ", "") + "','THW','') OR MACD='" + this.txtCoDong.Text.Replace(" ", "") + "' )";
            dtThongTinCD.DataSource = Class.LinQConnection.getDataTable(sql);
            dtThongTinCD.DataBind();
            r1.SelectedIndex = 0;
            r2.SelectedIndex = 0;            
        }
        public void LoadKhongDongY()
        {

            string sql = " SELECT kp.ID, STT,cd.STTCD, cd.MACD, TENCD, CMND, NGAYCAP, NOICAP, DIACHI, CDGD, PHONGTOA, cd.TONGCD,";
            sql += " CASE WHEN C1=4 THEN N'Không hợp lệ' ELSE CASE WHEN C1=1 THEN N'Đồng ý' ELSE CASE WHEN C1=2 THEN N'Không đồng ý' ELSE N'Không có ý kiến' END END END as C1, ";
            sql += " CASE WHEN C2=4 THEN N'Không hợp lệ' ELSE CASE WHEN C2=1 THEN N'Đồng ý' ELSE CASE WHEN C2=2 THEN N'Không đồng ý' ELSE N'Không có ý kiến' END END END as C2";           
            sql += " FROM DSCODONG_THAMDU cd, BIEUQUYET kp ";
            sql += " WHERE cd.MACD=kp.MACD AND LANBQ= " + DropDownList1.SelectedValue.ToString() + " AND CONVERT(VARCHAR(50),NGAYBQ,103)='" + this.tungay.Text + "'  ";
            DataTable dt = Class.LinQConnection.getDataTable(sql);
            G_KDY.DataSource = dt;
            G_KDY.DataBind();
            //this.tc_thuvao.Text = this.G_KDY.Rows.Count + "";
            //Session["TC"] = this.tc_thuvao.Text;
        
        }
        protected void txtCoDong_TextChanged(object sender, EventArgs e)
        {
            loadThongTinCD();
        }

        protected void btSubmit_Click(object sender, EventArgs e)
        {
            string sql = " INSERT INTO DSCODONG_THAMDU (STT, STTCD, MACD, TENCD, CMND, NGAYCAP, NOICAP, DIACHI, CDGD, PHONGTOA, TONGCD, NGAYVAO)";
            sql += " SELECT STT, STTCD, MACD, TENCD, CMND, NGAYCAP, NOICAP, DIACHI, CDGD, PHONGTOA, TONGCD,GETDATE() AS NGAYVAO  FROM DSCODONG WHERE ( STT='" + this.txtCoDong.Text.Replace(" ", "") + "' )";
            Class.LinQConnection.ExecuteCommand(sql);
           // Binddata();


            sql = " INSERT INTO BIEUQUYET(LANBQ,NGAYBQ,LOAIBQ,STTCD,MACD,TONGCD,C1,C2,CREATEBY,CREATEDATE) ";
            sql += " SELECT " + DropDownList1.SelectedValue.ToString() + " AS LANBQ,'" + DateTime.ParseExact(tungay.Text, "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture) + "' AS NGAYBQ,0 AS LOAIBQ,STTCD,MACD,TONGCD ";
            sql += " ," + r1.SelectedValue + "," + r2.SelectedValue ;
            sql += " ,'" + Session["login"] + "' AS CREATEBY, GETDATE() AS CREATEDATE ";
            sql += " FROM DSCODONG_THAMDU WHERE ( STTCD=REPLACE('" + this.txtCoDong.Text.Replace(" ", "") + "','THW','') OR MACD='" + this.txtCoDong.Text.Replace(" ", "") + "' )";
            Class.LinQConnection.ExecuteCommand(sql);
            Binddata();
            this.txtCoDong.Focus();
            dtThongTinCD.DataSource = null;
            dtThongTinCD.DataBind();
        }

        protected void txtTheTV_TextChanged(object sender, EventArgs e)
        {
            //this.tc_phatra.Text = String.Format("{0:0,0}", txtTheTV.Text);
            //Session["TR"] = this.tc_phatra.Text;
        }
    }
}