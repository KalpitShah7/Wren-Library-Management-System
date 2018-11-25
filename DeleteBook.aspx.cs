using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class DeleteBook : System.Web.UI.Page
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
        DropDownList2.DataSource = ds;
        DropDownList2.DataTextField = "Name";
        DropDownList2.DataValueField = "Name";
        DropDownList2.DataBind();*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("Delete from BookDetails where Name='"+DropDownList2.Text+"'", con1);
        cmd.ExecuteNonQuery();
        ShowMessage("Book Deleted Succesfully");
        con1.Close();
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
}