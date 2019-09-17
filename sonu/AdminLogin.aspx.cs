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

public partial class AdminLogin : System.Web.UI.Page
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
        string query;
        query = "select * from Admin_Table where Name='" + un + "' and password='" + pa + "'";
        //foodfantacy ta3 = new foodfantacy();
        //ta3.FoodS(query);
        foodfantacy obj = new foodfantacy();
        //DataTable obj = new DataTable();
        DataTable ta1 = obj.FoodS(query);
        if (ta1.Rows.Count >= 1)
        {


            Response.Redirect("ahomepage.aspx");

        }
        else
        {

        }

    }
   
}

