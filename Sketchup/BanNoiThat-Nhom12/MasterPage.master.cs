using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username"] != null)
            {
                lblchaomung.Text = "Chào, " + Session["Username"].ToString();
                btnthoat.Text = "Đăng xuất";
            }
            else
            {
                lblchaomung.Text = "";
                btnthoat.Text = "Đăng nhập";
            }
        }

    }

    protected void btnthoat_Click(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Session.Abandon();
            Response.Redirect("dangnhap.aspx");
        }
        else
        {
            Response.Redirect("dangnhap.aspx");
        }
    }
}
