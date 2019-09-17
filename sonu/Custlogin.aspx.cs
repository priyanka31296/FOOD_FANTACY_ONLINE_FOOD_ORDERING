using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Custlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string un;
        un = TextBox1.Text;
        string pa;
        pa = TextBox2.Text;
        
        string selectquery = "select * from Reg_Table where ULoginName='" + un + "' and Password='" + pa + "'";
        //foodfantacy ta3 = new foodfantacy();
        //ta3.FoodS(query);
        foodfantacy obj = new foodfantacy();
        //DataTable obj = new DataTable();
        DataTable ta1 = obj.FoodS(selectquery);
        if (ta1.Rows.Count >= 1)
        {
            Response.Redirect("chomepage.aspx");

        }
        else
        {
            string msg1 = "<script>alert('Enter Correct Username Or Password!,');</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Control), "alertmsg", msg1, false);
        }
    }
}

