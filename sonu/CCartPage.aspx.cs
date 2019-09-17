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
using System.Data.SqlClient;
using System.Net;
using System.Text;
using System.IO;





public partial class CCartPage : System.Web.UI.Page
{
   
    string ord;
    int order1;
    foodfantacy obj = new foodfantacy();
     string smsURL;
    protected void Page_Load(object sender, EventArgs e)
    {
        txttime.Text = DateTime.Now.ToString("hh:mm:ss tt");
        txtdate.Text = DateTime.Now.ToString("dd MMMM,yyyy");
        
        //DataTable dt = Session["cart"] as DataTable;
        //DataRow dr = dt.NewRow();
        ord = Session["ord_no"].ToString();
        txt_ord_no.Text = ord;
         order1 = Convert.ToInt32(ord);
        DateTime today = DateTime.Today;

        TimeSpan current_time = DateTime.Now.TimeOfDay;
        //TimeSpan current_time = new TimeSpan(current);
        DateTime time = DateTime.Today.Add(current_time);
        string displayTime = time.ToString("hh:mm tt");
        txtdate.Text = today.ToString("dd/MM/yyyy");

        txttime.Text = displayTime;
        //GridView1.DataSource = dt;
        //GridView1.DataBind();
        BindGrid();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CPlaceOrder.aspx");
    }
   
    //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
       // if (e.CommandName == "delete")
        //{
            //DataTable dt = (DataTable)Session["cart"];
            //DataColumn[] keyColumns = new DataColumn[1];
            //keyColumns[0] = dt.Columns["ProductId"];
            //dt.PrimaryKey = keyColumns;
            //DataTable dt = (DataTable)Session["cart"];
            //int id = Convert.ToInt32(e.CommandArgument);
            //DataTable dt = (DataTable)Session["cart"];
            //dt.Rows.Find(id).Delete();
           // dt.AcceptChanges();
           // Session["cart"] = dt;

        //}
    //}
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int index = Convert.ToInt32(e.RowIndex);
        DataTable dt = Session["cart"] as DataTable;
        dt.Rows[index].Delete();
        Session["dt"] = dt;
        BindGrid();
    }
    protected void BindGrid()
    {
        DataTable dt = Session["cart"] as DataTable;
        GridView1.DataSource = dt;
        GridView1.DataBind();
        int total = dt.AsEnumerable().Sum(row => row.Field<int>(dt.Columns["Total"]));
        GridView1.FooterRow.Cells[5].Text = "Total";
        GridView1.FooterRow.Cells[5].HorizontalAlign = HorizontalAlign.Right;
        GridView1.FooterRow.Cells[6].Text = total.ToString("N2");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        

    GridView1.PageIndex = e.NewPageIndex;
    this.BindGrid();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //DataTable dt1 = new DataTable();
        //string querry2 = "select onum from order_table where onum='" + order1 + "' and del_date='"+txtdate.Text+"' and del_time='" + txttime.Text + "'";
        ///dt1 = obj.FoodS(querry2);
        //if (dt1.Rows.Count > 0)
        //{
        //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Order Number Exists  ');", true);
        //return;
        // }
        // else
        foreach (GridViewRow g1 in GridView1.Rows)
        {

            string prod = g1.Cells[1].Text;
            int prod_id = Convert.ToInt32(prod);
            string pr = g1.Cells[4].Text;
            int price = Convert.ToInt32(pr);
            string qty = g1.Cells[5].Text;
            int quantity = Convert.ToInt32(qty);
            string tot = g1.Cells[6].Text;
            int total = Convert.ToInt32(tot);
            DataTable dt1 = new DataTable();
            string querry2 = "select * from order_table where del_date='" + txtdate.Text + "' and Product_id='" + prod_id + "' and Item_Name='" + g1.Cells[2].Text + "' and Price='" + price + "' and Quantity='" + quantity + "' and Total='" + total + "'";
            dt1 = obj.FoodS(querry2);
            if (dt1.Rows.Count > 0)
            {
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Order Exists  ');", true);
                txt_ord_no.Text = "";
                DropDownList1.SelectedIndex = -1;
                txtdate.Text = "";
                txttime.Text = "";
                txtaddress.Text = "";
                return;
               
            }
            //if(DateTime.Now.TimeOfDay >= System.TimeSpan.Parse("11:00:00"))
            //{
            //    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('vvv ');", true);
            //    txt_ord_no.Text = "";
            //    DropDownList1.SelectedIndex = -1;
            //    txtdate.Text = "";
            //    txttime.Text = "";
            //    txtaddress.Text = "";
            //    return;

            //}
            //else
            //{

            //    if (System.DateTime.Now.Hour >= 10)
            //    {
            //        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('can't');", true);
            //    }
            //}
            //else
            //{
//            else if(DateTime.Now.TimeOfDay == System.TimeSpan.Parse("00:09:00"))

//{

//    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('can't  ');", true);    

//}
           
        

            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");

            SqlCommand com = new SqlCommand("insert into order_table(onum,Product_id,Item_Name,date,Price,Quantity,Total,resturant,del_date,del_time,del_address,mobno) values (" + order1 + ",'" + prod_id + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "','" + price + "','" + quantity + "','" + total + "','" + DropDownList1.SelectedItem.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" + txtaddress.Text + "','" + TextBox1.Text + "')", con);

            con.Open();

            com.ExecuteNonQuery();

            con.Close();

            string save = "insert into  temp_table(onum,Product_id,Item_Name,date,Price,Quantity,Total,resturant,del_date,del_time,del_address) values (" + order1 + ",'" + prod_id + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "','" + price + "','" + quantity + "','" + total + "','" + DropDownList1.SelectedItem.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" + txtaddress.Text + "')";
            foodfantacy ob = new foodfantacy();
            ob.FoodI(save);



        }
        SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
        SqlCommand com1 = new SqlCommand("insert into ordernum(onum) values (" + order1 + ")", con1);
        con1.Open();

        com1.ExecuteNonQuery();

        con1.Close();
        txt_ord_no.Text = "";
        DropDownList1.SelectedIndex = -1;
        txtdate.Text = "";
        txttime.Text = "";
        txtaddress.Text = "";
        TextBox1.Text = "";
        //GridView1.Dispose();
        //Session["cart"] = null;
        //GridView1.Rows.Clear();
        GridView1.Visible = false;

        
        
            ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Order Placed Sucessfully');", true);
        
        sendsms();
    }

         public void sendsms()
    {
        string added_id = "";
        string admid = "";

        string msg = "YOUR ORDER Number is" + order1 + "" + "Thanks For Ordering the Food "; 


        if (msg != "")
        {

            string mobile = "";
            string stud_mobile = "";
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            string q;
            q = "select distinct(onum),mobno from order_table where onum='"+order1+"'";
            SqlCommand cmd = new SqlCommand(q, con);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read() == true)
            {


                stud_mobile = dr["mobno"].ToString();

                if (stud_mobile != "")
                {
                   // msg ="YOUR ORDER Number is" + txt_ord_no.Text +""+ "Thanks For Ordering the Food ";
                    //sms +="\n"+"Regards"+" " + School.schoolName1();
                    //smsURL = smsURL + "&msg=" + sms + "&send_to=" + mobile + "";
                    smsURL = sms(stud_mobile, msg);
                    WebRequest request = null;
                    HttpWebResponse response = null;
                    try
                    {
                     smsURL = sms(stud_mobile, msg);
                        //smsURL = smsURL + "&msg=" + sms + "&send_to=" + mobile + "";
                        request = WebRequest.Create(smsURL);
                     
                        // Send the 'HttpWebRequest' and wait for response. 
                        response = (HttpWebResponse)request.GetResponse();
                        Stream stream = response.GetResponseStream();
                        Encoding ec = System.Text.Encoding.GetEncoding("utf-8");
                        //StreamReader reader = new
                        //System.IO.StreamReader(stream, ec);
                        string content;
                        using (StreamReader reader = new StreamReader(stream, ec))
                        {
                            content = reader.ReadToEnd();
                        }
                       

                        // reader.Close();
                        stream.Close();
                    }
                    catch (Exception exp)
                    {

                        //string[] fileds = { "admission_id", "status", "class_id", "mobile", "added_date", "added_id" };
                        //string[] vals = { admid, exp.ToString(), clsid, mobile, "getdate()", added_id };
                        //data.insertQuery(fileds, vals, "sms_status", 0, db2, cm2, dr2, 0);
                    }

                    finally
                    {
                        if (response != null)
                            response.Close();
                    }

                }

            }
            dr.Close();
        }
    }

    public static string sms(string mobile, string sms)
    {
        //string url = "http://crowww.groups4all.com/api.php?msgType=TEXT&groupName=VIDSKL&userid=VIDSKL&password=iktech@81&method=sendMessage&auth_scheme=plain&format=text&sms=" + sms + "&send_to=" + mobile + "";
        //return url;

        //string url = "http://enterprise.smsgupshup.com/community/api.php?msgType=TEXT&groupName=BSCBGK&userid=vijayit&password=abc123&method=sendMessage&message=" + sms + "&sendTo=" + mobile + "";
        //string url = "http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=Prarthana&password=3148&sendername= PRARTN&mobileno=" + mobile + "&message=" + sms + "";
        //string url ="http://bulksms.mysmsmantra.com:8080/WebSMS/SMSAPI.jsp?username=Prarthana&password=3148&sendername=PRARTN&mobileno="+mobile+"&message="+sms+" ";
        string url = "http://basava.siegsms.in/SendingSms.aspx?userid=basava&pass=basava@123&title=BETMBL&phone=" + mobile + "&msg=" + sms + "";
        return url;
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("CCancelOrder.aspx");
    }

   
}
