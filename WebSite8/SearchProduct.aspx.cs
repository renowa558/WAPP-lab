using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SearchProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {

    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection (ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        Panel1.Visible = true;
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from Products where productName Like'%" + txtProdName.Text + "%'", con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string id = dt.Rows[0][0].ToString();
        lblProdName.Text = dt.Rows[0][1].ToString();
        lblProdDesc.Text = dt.Rows[0][2].ToString();
        lblProdPrice.Text = dt.Rows[0][3].ToString();
        imgProd.ImageUrl = "ImageHandler.ashx?ID=" + id;
        con.Close();
    }
}