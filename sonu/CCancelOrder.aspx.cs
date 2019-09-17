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
using System.Globalization;
using System.Data.SqlClient;

public partial class CCancelOrder : System.Web.UI.Page
{
    foodfantacy obj = new foodfantacy();
    protected void Page_Load(object sender, EventArgs e)
    {
       // Label1.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Label1.Visible = true;
        DateTime today = DateTime.Today;

        TimeSpan current_time = DateTime.Now.TimeOfDay;
        //TimeSpan m = TimeSpan.FromMinutes(30);
        //TimeSpan n = current_time.Add(m);
        //TimeSpan current_time = new TimeSpan(current);
        DateTime time = DateTime.Today.Add(current_time);
        string displayTime = time.ToString("hh:mm tt");
        string current_date = today.ToString("dd/MM/yyyy");
        //TimeSpan m = TimeSpan.FromMinutes(15);
        //TimeSpan n = tspan.Add(m);
        // txttime.Text = displayTime;
        DataTable dt1 = new DataTable();
        string querry2 = "select * from order_table where onum='" + TextBox1.Text + "'";
        dt1 = obj.FoodS(querry2);
        if (dt1.Rows.Count > 0)
        {
            string date = dt1.Rows[0]["del_date"].ToString();
            string time1 = dt1.Rows[0]["del_time"].ToString();

            TimeSpan tspan;

            tspan = DateTime.ParseExact(time1, "hh:mm tt", CultureInfo.InvariantCulture).TimeOfDay;



            //DateTime today = DateTime.Today;
            //string today1 = today.ToString("dd/MM/yyyy");
            TimeSpan m = TimeSpan.FromMinutes(30);
            TimeSpan n = tspan.Add(m);

            if (date == current_date)
            {

                if (n >= current_time && current_time >= tspan)
                {
                    //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Order Can't be cancelled');", true);
                    // return;
                    DataTable dt2 = new DataTable();
                    SqlDataReader dr4;
                    SqlConnection con4 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
                    con4.Open();
                    SqlCommand com4 = new SqlCommand("select * from order_table where onum='" + TextBox1.Text + "'", con4);
                    dr4 = com4.ExecuteReader();
                    while (dr4.Read() == true)
                    {
                        //string querry3 = "select * from order_table where onum='" + TextBox1.Text + "'";
                        //dt2 = obj.FoodS(querry3);
                        // if (dt2.Rows.Count > 0)
                        //{
                        SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
                        SqlCommand com1 = new SqlCommand("insert into cancle_table(onum,Product_id,Item_Name,date,Price,Quantity,Total,resturant,del_date,del_time,del_address) values ('" + dr4["onum"].ToString() + "','" + dr4["Product_id"].ToString() + "','" + dr4["Item_Name"].ToString() + "','" + dr4["date"].ToString() + "','" + dr4["Price"].ToString() + "','" + dr4["Quantity"].ToString() + "','" + dr4["Total"].ToString() + "','" + dr4["resturant"].ToString() + "','" + dr4["del_date"].ToString() + "','" + dr4["del_time"].ToString() + "','" + dr4["del_address"].ToString() + "')", con1);
                        con1.Open();

                        com1.ExecuteNonQuery();
                        con1.Close();
                    }
                    dr4.Close();
                    con4.Close();
                    SqlConnection con5 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
                    con5.Open();
                    SqlCommand com2 = new SqlCommand("delete from order_table where onum='" + TextBox1.Text + "'", con5);
                    com2.ExecuteNonQuery();
                    con5.Close();
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Order Cancelled Successfully');", true);
                    TextBox1.Text = "";


                }


                TextBox1.Text = "";
                return;
            }

            TextBox1.Text = "";
            return;

        }

    }

   
    
}
