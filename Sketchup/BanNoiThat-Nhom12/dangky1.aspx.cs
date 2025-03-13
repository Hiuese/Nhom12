using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class dangky1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btndangky_Click(object sender, EventArgs e)
    {

        SqlConnection cnn = new SqlConnection(
"Data Source=DESKTOP-UV4BT4L\\SQLEXPRESS;Initial Catalog=Qlybannoithat_nhom12;Integrated Security=True;");
        DataTable dt = new DataTable();
        string sql1 = "select * from tbl_user where tendn='" + txttendn.Text + "'";
        String ten, mk, email;
        ten = txttendn.Text;
        mk = txtmk.Text;
        email = txtemail.Text;
        string sql2 = "insert into tbl_user values('" + ten + "','" + mk + "','" + email +
"')";
        try
        {
            cnn.Open();
            SqlDataAdapter ad = new SqlDataAdapter(sql1, cnn);
            ad.Fill(dt);
            SqlCommand cmd = new SqlCommand(sql2, cnn);
            cmd.Connection = cnn;
            if (dt.Rows.Count > 0)
            {
                //Response.Write("Tên ddn này đã tồn tại"); 
                lblthongbao.Text = "Tên đăng nhập này đã tồn tại";
                txttendn.Focus();
            }
            else
            {
                int i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    lblthongbao.Text = "Đăng ký thành công";
                }
                else
                {
                    lblthongbao.Text = "Lỗi";
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        { cnn.Close(); }
    }

    protected void txttendn_TextChanged(object sender, EventArgs e)
    {

    }

    protected void txtemail_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnreset_Click(object sender, EventArgs e)
    {

    }
}