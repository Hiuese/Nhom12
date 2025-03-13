using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class chitietnoithat : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadChiTietNoiThat();
        }

    }
    private void LoadChiTietNoiThat()
    {
        string mant = Request.QueryString["mant"];
        if (!string.IsNullOrEmpty(mant))
        {
            SqlConnection cnn = new SqlConnection(
  "Data Source=DESKTOP-UV4BT4L\\SQLEXPRESS;Initial Catalog=Qlybannoithat_nhom12;Integrated Security=True;");
            {
                string query = "SELECT ten, dongia, hinhanh, mota FROM noithat WHERE mant = @mant";
                using (SqlCommand cmd = new SqlCommand(query, cnn))
                {
                    cmd.Parameters.AddWithValue("@mant", mant);
                    cnn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        lblTenSanPham.Text = reader["ten"].ToString();
                        lblGia.Text = reader["dongia"].ToString() + " VND";
                        imgsanpham.ImageUrl = "~/images/" + reader["hinhanh"].ToString();
                        lblMoTa.Text = reader["mota"].ToString();
                    }
                    cnn.Close();
                }
            }
        }
        else
        {
           lblthongbao.Text = "Không tìm thấy sản phẩm!";
        }
    }

    protected void btnThemVaoGio_Click(object sender, EventArgs e)
    {

    }
}