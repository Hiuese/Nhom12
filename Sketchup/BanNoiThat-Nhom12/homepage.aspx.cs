using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadSanPhamNoiBat();
        }
        
    }
    private void LoadSanPhamNoiBat()
    {
        SqlConnection cnn = new SqlConnection(
"Data Source=DESKTOP-UV4BT4L\\SQLEXPRESS;Initial Catalog=Qlybannoithat_nhom12;Integrated Security=True;");
        {
            string query = "SELECT TOP 6 mant, ten, dongia, hinhanh FROM noithat ORDER BY NEWID()";
            SqlDataAdapter da = new SqlDataAdapter(query, cnn);
            DataTable dt = new DataTable();
            da.Fill(dt);

            DataList1.DataSource = dt;
            DataList1.DataBind();


        }


    }
    

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
                        

    }
}