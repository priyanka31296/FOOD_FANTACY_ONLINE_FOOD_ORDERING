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

public partial class RegistrationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
          string selectquery = "select * from Reg_Table where UloginName='" + txtulname.Text + "'";
        foodfantacy obj = new foodfantacy();
        //DataTable obj = new DataTable();
        DataTable ta1 = obj.FoodS(selectquery);
        if (ta1.Rows.Count >= 1)
        {
            string msg1 = "<script>alert('User Already Exist!,');</script>";
            ScriptManager.RegisterStartupScript(this, typeof(Control), "alertmsg", msg1, false);
        }
        else
        {
            string save = "insert into Reg_Table(uname,uloginname,password,location,mobno,email)values('" + txtrname.Text + "','" + txtulname.Text + "','" + txtpass.Text + "','" + txtloca.Text + "','" + txtmobno.Text + "','" + txtemail.Text + "')";
            foodfantacy ob = new foodfantacy();
            ob.FoodI(save);
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Registred Sucessfully');", true);
            txtulname.Text = "";
            txtulname.Text="";
            txtpass.Text="";
            txtloca.Text="";
            txtmobno.Text="";
            txtemail.Text = "";
        }
    
    }
}
