using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Issue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox5.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy"); 
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        TextBox6.Text = Calendar2.SelectedDate.ToString("dd/MM/yyyy"); 
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con.Open();
        string query = "select * from Student where Regno='" + DropDownList2.Text + "'";
        string query1 = "select * from BookDetails where Name='" + DropDownList1.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
        DataSet ds = new DataSet();
        DataSet ds1 = new DataSet();
        da.Fill(ds, "Student");
        da1.Fill(ds1, "BookDetails");
        DataTable dt = ds.Tables[0];
        DataTable dt1 = ds1.Tables[0];
        con.Close();
        TextBox2.Text = dt.Rows[0]["Course"].ToString();
        TextBox3.Text = dt1.Rows[0]["Author"].ToString();
        TextBox4.Text = dt1.Rows[0]["Edition"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Issue(Regno,Date_of_issue,Date_of_return,Name,Course,Author,Edition)values('" + DropDownList2.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')", con1);
        cmd.ExecuteNonQuery();
        ShowMessage("Book Issued Successfully");
        con1.Close();
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("Select * from Issue", con1);
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        con1.Close();
    }
}