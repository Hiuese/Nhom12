using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class noithattheoloai : System.Web.UI.Page
{
    SqlConnection sqlCnn = new SqlConnection(
   "Data Source=DESKTOP-UV4BT4L\\SQLEXPRESS;Initial Catalog=Qlybannoithat_nhom12;Integrated Security=True;");
    protected void Page_Load(object sender, EventArgs e)
    {
        string manoithat = Request.QueryString["maloaint"];
        string sql = "select * from noithat where maloaint ='" + manoithat + "'";
        sqlCnn.Open();
        SqlDataAdapter ad = new SqlDataAdapter(sql, sqlCnn);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
        
        sqlCnn.Close();


    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}