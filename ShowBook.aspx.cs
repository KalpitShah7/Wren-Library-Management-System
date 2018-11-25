using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class ShowBook : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        string query = "select * from BookDetails";
        SqlDataAdapter da = new SqlDataAdapter(query, con1);
        DataSet ds = new DataSet();
        da.Fill(ds, "BookDetails");
        con1.Close();
        DropDownList1.DataSource = ds;
        DropDownList1.DataTextField = "Name";
        DropDownList1.DataValueField = "Name";
        DropDownList1.DataBind();*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("Select * from BookDetails where Name='" + DropDownList1.Text + "'", con1);
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        GridView1.DataSource = reader;
        GridView1.DataBind();
        con1.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("Select * from BookDetails", con1);
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        GridView2.DataSource = reader;
        GridView2.DataBind();
        con1.Close();
        /* SqlDataSource2.InsertParameters.Clear();
        SqlDataSource2.InsertParameters.Add("Author", TextBox1.Text);
        SqlDataSource2.InsertParameters.Add("Name", TextBox2.Text);
        SqlDataSource2.InsertParameters.Add("Publication", TextBox3.Text);
        SqlDataSource2.InsertParameters.Add("Edition", TextBox4.Text);
        SqlDataSource2.InsertParameters.Add("Price", TextBox6.Text);
        SqlDataSource2.Insert();*/
        /*SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("Select * from BookDetails", con1);
        cmd.ExecuteNonQuery();
        SqlDataReader reader = cmd.ExecuteReader();
        GridView2.DataSource = reader;
        GridView2.DataBind();
        con1.Close();*/
    }
}