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

public partial class CFeedBack : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string save = "insert into feedback(uloginname,feedback)values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
        foodfantacy ob = new foodfantacy();
        ob.FoodI(save);
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Feedback posted Sucessfully');", true);
    }
}
