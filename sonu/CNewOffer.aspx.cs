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

public partial class CNewOffer : System.Web.UI.Page
{
    foodfantacy obj = new foodfantacy();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack != null)
        {

            string q;
            q = "SELECT  count(*) from ordernum";
            int getornum;
            getornum = obj.getOdernum(q);
            if (getornum == 0)
            {
                int od;
                od = 0 + 1;
                txtordnum.Text = Convert.ToString(od);
            }
            else
            {
                q = "SELECT  max(oid) from ordernum";
                int getornum1;
                getornum1 = obj.getOdernum(q);
                int od1;
                od1 = getornum1 + 1;
                txtordnum.Text = Convert.ToString(od1);

            }
            
            



        }




    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string ord = txtordnum.Text;
        Session["ord_no"] = ord;
        Response.Redirect("CCartPage.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[0].Text;
        TextBox2.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[1].Text;
        TextBox3.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[4].Text;
        TextBox4.Text = GridView1.Rows[GridView1.SelectedIndex].Cells[3].Text;

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        DataTable dt = Session["cart"] as DataTable;
        //DataRow dr = dt.NewRow();
        DataRow dr1 = dt.NewRow();
        //Session["ord_no"] = Session[txtordnum.Text].ToString();
        dr1[0] = TextBox1.Text;
        dr1[1] = TextBox2.Text;
        dr1[2] = TextBox3.Text;
        dr1[3] = TextBox4.Text;
        dr1[4] = TextBox5.Text;
        dr1[5] = TextBox6.Text;
        dt.Rows.Add(dr1);
       
        TextBox1.Text="";
        TextBox2.Text="";
        TextBox3.Text="";
        TextBox4.Text="";
        TextBox5.Text="";
        TextBox6.Text="";
    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        Int32 val1 = Convert.ToInt32(TextBox4.Text);
        Int32 val2 = Convert.ToInt32(TextBox5.Text);
        Int32 val3 = val1 * val2;
        TextBox6.Text = val3.ToString();
    }
}
