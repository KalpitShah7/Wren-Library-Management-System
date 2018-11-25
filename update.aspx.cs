using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

public partial class update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Update System set Password='"+TextBox2.Text+"' where Username='"+TextBox1.Text+"'",con);
        cmd.ExecuteNonQuery();
        ShowMessage("Password Updated Successfully!!");
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
        String query = "SELECT * from System";
        SqlCommand cd = new SqlCommand(query, con);
        SqlDataReader reader = cd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        con.Close();
    }
}