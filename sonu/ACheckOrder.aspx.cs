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

public partial class ACheckOrder : System.Web.UI.Page
{
    foodfantacy obj = new foodfantacy();
    protected void Page_Load(object sender, EventArgs e)
    {
        //DataTable dt1 = new DataTable();
        //string querry2 = "select * from order_table";
        //dt1 = obj.FoodS(querry2);
        //GridView1.DataSource = dt1;
        //GridView1.DataBind();
        //SqlDataSource1.SelectCommand = "select * from ordernum";
        DataTable dt1 = new DataTable();
        string querry2 = "SELECT DISTINCT onum, del_date, resturant FROM order_table";
        dt1 = obj.FoodS(querry2);
        GridView1.DataSource = dt1;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string query;
        query = "select * from order_Table where  onum='" + TextBox1.Text + "'";
        //foodfantacy ta3 = new foodfantacy();
        //ta3.FoodS(query);
        foodfantacy obj = new foodfantacy();
        //DataTable obj = new DataTable();
        DataTable ta1 = obj.FoodS(query);
        GridView2.DataSource = ta1;
        GridView2.DataBind();
    }
}
