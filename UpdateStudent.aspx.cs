using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class pdateStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con.Open();
        string query = "select * from Student where Regno='" + DropDownList3.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "Student");
        DataTable dt = ds.Tables[0];
        con.Close();
        TextBox1.Text = dt.Rows[0]["Name"].ToString();
        TextBox2.Text = dt.Rows[0]["Address"].ToString();
        DropDownList1.Text = dt.Rows[0]["Course"].ToString();
        DropDownList2.Text = dt.Rows[0]["Gender"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con.Open();
        SqlCommand cmd = new SqlCommand("Update Student set Name='" + TextBox1.Text + "',Address='" + TextBox2.Text + "',Course='" + DropDownList1.Text + "',Gender='" + DropDownList2.Text + "' where Regno='" + DropDownList3.Text + "'", con);
        cmd.ExecuteNonQuery();
        ShowMessage("Student Updated Successfully!!");
        con.Close();
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
}