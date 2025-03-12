using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class WebUserControl : System.Web.UI.UserControl
{
    SqlConnection sqlCnn = new SqlConnection(
    "Data Source=DESKTOP-UV4BT4L\\SQLEXPRESS;Initial Catalog=Qlybannoithat_nhom12;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from loaint ";
        sqlCnn.Open();
        SqlDataAdapter ad = new SqlDataAdapter(sql, sqlCnn);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        else
        { lblthongbao.Text = "Khong Co Du Lieu"; }
        sqlCnn.Close();

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}