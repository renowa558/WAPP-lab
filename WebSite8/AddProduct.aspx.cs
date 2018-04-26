using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uType"] == null || !Session["uType"].Equals("Admin"))
            Response.Redirect("Login.aspx"); //if: admin user, access page. ELSE: redirect to login
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        try
        {
            con.Open();
            Stream fs = fuProdImage.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            byte[] content = br.ReadBytes((Int32)fs.Length);

            string query1 = "insert into Products (productName, productDescription, productPrice, productImage) values (@pName,@pDesc,@pPrice,@pImage) ";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@pName", txtProdName.Text);
            cmd1.Parameters.AddWithValue("@pDesc", txtProdDesc.Text);
            cmd1.Parameters.AddWithValue("@pPrice", txtProdPrice.Text);
            cmd1.Parameters.AddWithValue("@pImage", content);
            cmd1.ExecuteNonQuery();
            lblMessage.ForeColor = System.Drawing.Color.ForestGreen;
            lblMessage.Text = "Product added successfully";
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error: " + ex.ToString());
        }
    }
}