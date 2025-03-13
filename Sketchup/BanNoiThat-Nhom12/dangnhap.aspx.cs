using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class dangnhap : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection();
    SqlDataAdapter ad = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

  


    protected void btndangnhap_Click(object sender, EventArgs e)
    {
        string sql1 = "select * from tbl_user where tendn='" + txttendn.Text + "' and matkhau='" + txtmatkhau.Text + "'";
        SqlConnection cnn = new SqlConnection(
"Data Source=DESKTOP-UV4BT4L\\SQLEXPRESS;Initial Catalog=Qlybannoithat_nhom12;Integrated Security=True;");
        try
        {
            cnn.Open();
            String ten, mk, email;
            ten = txttendn.Text;
            mk = txtmatkhau.Text;
            SqlDataAdapter ad = new SqlDataAdapter(sql1, cnn); ad.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Session["makhach"] = txttendn.Text;
                Response.Redirect("Dangnhapthanhcong.aspx");
                lblthongbao.Text = "Tên đăng nhập hoặc mật khẩu ko đúng";
            }
            else
            {
                lblthongbao.Text = "Tên đăng nhập hoặc mật khẩu ko đúng";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            cnn.Close();
        }






    }

}
