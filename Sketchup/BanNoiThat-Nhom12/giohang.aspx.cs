using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class giohang : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadCart();
        }
    }

    private void LoadCart()
    {
        if (Session["cart"] != null)
        {
            DataTable cart = (DataTable)Session["cart"];
            GridViewCart.DataSource = cart;
            GridViewCart.DataBind();

            // Calculate total price
            decimal total = 0;
            foreach (DataRow row in cart.Rows)
            {
                total += Convert.ToDecimal(row["tongtien"]);
            }
            lblTotalPrice.Text = total.ToString("N0");
        }
    }

    protected void GridViewCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (Session["cart"] != null)
        {
            DataTable cart = (DataTable)Session["cart"];
            int mant = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "UpdateItem")
            {
                foreach (GridViewRow row in GridViewCart.Rows)
                {
                    HiddenField hfId = (HiddenField)row.FindControl("hfMant");
                    TextBox txtSoLuong = (TextBox)row.FindControl("txtSoLuong");

                    if (hfId != null && txtSoLuong != null)
                    {
                        int id = Convert.ToInt32(hfId.Value);
                        if (id == mant)
                        {
                            int soLuongMoi = Convert.ToInt32(txtSoLuong.Text);
                            foreach (DataRow dr in cart.Rows)
                            {
                                if (Convert.ToInt32(dr["mant"]) == id)
                                {
                                    dr["soluong"] = soLuongMoi;
                                    dr["tongtien"] = soLuongMoi * Convert.ToDecimal(dr["dongia"]);
                                    break;
                                }
                            }
                            break;
                        }
                    }
                }
            }
            else if (e.CommandName == "RemoveItem")
            {
                for (int i = cart.Rows.Count - 1; i >= 0; i--)
                {
                    if (Convert.ToInt32(cart.Rows[i]["mant"]) == mant)
                    {
                        cart.Rows.RemoveAt(i);
                        break;
                    }
                }
            }

            Session["cart"] = cart;
            LoadCart();
        }
    }

    protected void GridViewCart_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    // Method to add items to the cart
    public void AddToCart(int mant, string ten, decimal dongia, int soluong)
    {
        DataTable cart;
        if (Session["cart"] == null)
        {
            cart = new DataTable();
            cart.Columns.Add("mant", typeof(int));
            cart.Columns.Add("ten", typeof(string));
            cart.Columns.Add("dongia", typeof(decimal));
            cart.Columns.Add("soluong", typeof(int));
            cart.Columns.Add("tongtien", typeof(decimal));
        }
        else
        {
            cart = (DataTable)Session["cart"];
        }

        bool itemExists = false;
        foreach (DataRow row in cart.Rows)
        {
            if (Convert.ToInt32(row["mant"]) == mant)
            {
                row["soluong"] = Convert.ToInt32(row["soluong"]) + soluong;
                row["tongtien"] = Convert.ToInt32(row["soluong"]) * Convert.ToDecimal(row["dongia"]);
                itemExists = true;
                break;
            }
        }

        if (!itemExists)
        {
            DataRow newRow = cart.NewRow();
            newRow["mant"] = mant;
            newRow["ten"] = ten;
            newRow["dongia"] = dongia;
            newRow["soluong"] = soluong;
            newRow["tongtien"] = dongia * soluong;
            cart.Rows.Add(newRow);
        }

        Session["cart"] = cart;
        LoadCart();
    }
}
