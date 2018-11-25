using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Update BookDetails set Author='" + TextBox1.Text + "',Name='" + TextBox2.Text + "',Publication='" + TextBox3.Text + "',Edition='" + TextBox4.Text + "' where Accno='" + DropDownList1.Text + "'", con);
        cmd.ExecuteNonQuery();
        ShowMessage("Book Updated Successfully!!");
        con.Close();
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con.Open();
        string query = "select * from BookDetails where Accno='" + DropDownList1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "BookDetails");
        DataTable dt = ds.Tables[0];
        con.Close();
        TextBox1.Text = dt.Rows[0]["Author"].ToString();
        TextBox2.Text = dt.Rows[0]["Name"].ToString();
        TextBox3.Text = dt.Rows[0]["Publication"].ToString();
        TextBox4.Text = dt.Rows[0]["Edition"].ToString();
    }
}