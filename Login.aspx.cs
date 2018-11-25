using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       /* ViewState["name"] = TextBox1.Text;
        ViewState["password"] = TextBox2.Text;
        TextBox1.Text = TextBox2.Text = string.Empty;*/
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //iud Data = new iud();
        /*int i = Data.insert(TextBox1.Text, TextBox2.Text);
        if (i > 0)
        {
            Label3.Text = "Data Inserted!!";
            
        }*/
       /* int i = Data.update(TextBox1.Text, TextBox2.Text);
        if (i > 0)
        {
            Label3.Text = "Data Updated!!";
            //Response.Redirect("Vehcial.aspx");
        }*/
        //int i = Data.delete(TextBox1.Text);
        /*if (i > 0)
        {
            Label3.Text = "Data Deleted!!";
            //Response.Redirect("Vehcial.aspx");
        }*/
        SqlConnection con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Db.mdf;Integrated Security=True");
        con1.Open();
        SqlCommand cmd = new SqlCommand("Select * from System where Password='" + TextBox2.Text + "' and Username='" + TextBox1.Text + "'", con1);
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["USER_ID"] = TextBox1.Text;
            Response.Redirect("Home.aspx");
        }
        else
        {
            ShowMessage("Invalid Username or Password!!");
            Label3.Text = "Try Again";
        }
    }
    void ShowMessage(string msg)
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('" + msg + "');</script>");
    }
   // protected void Button2_Click(object sender, EventArgs e)
   // {
       /* HttpCookie username = Request.Cookies["username"];
        if (username == null)
        {
            username = new HttpCookie("username");
        }
        username.Value = TextBox1.Text;
        username.Expires = DateTime.Now.AddYears(1);
        Response.Cookies.Add(username);
        Label3.Text = "<b>Cookie Created! </b>";
        Label3.Text += " Current User :- " + username.Value;*/
   // }
}