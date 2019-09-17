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
using System.IO;

public partial class ANewOffer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        txtdate.Text = DateTime.Now.ToString("dd MMMM,yyyy");
       
    }
   
//protected void  Button1_Click1(object sender, EventArgs e)
//{
    
  
//    string fname = Path.GetFileName(FileUpload1.FileName);
//    create the path to save the file to
//    string fileName ="offerimages/"+FileUpload1.FileName;
//    save the file to our local path
//    FileUpload1.SaveAs(Server.MapPath(@"~/"+FileUpload1.FileName));
//    string fileName = "~/offerimages/" + fname;
//    save the file to our local path
//    FileUpload1.SaveAs(Server.MapPath(fileName));
        
//        string save = "insert into newoffer(pid,oitemname,image,price,date,discription)values('" + txtid.Text + "','" + txtname.Text + "','"+ fileName +"','" + txtprice.Text + "','" + txtdate.Text + "','" + txtdiscription.Text + "')";
//        foodfantacy ob = new foodfantacy();
//        ob.FoodI(save);
//        string msg1 = "<script>alert('item deleted!,');</script>";
//        ScriptManager.RegisterStartupScript(this, typeof(Control), "alertmsg", msg1, true);
    
//        SqlDataSource1.SelectCommand = "select * from newoffer";
//        DetailsView1.DataSourceID = "SqlDataSource1";
//}

protected void Button1_Click(object sender, EventArgs e)
{

    string fname = Path.GetFileName(FileUpload1.FileName);
    //create the path to save the file to
    //string fileName ="offerimages/"+FileUpload1.FileName;
    //save the file to our local path
    //FileUpload1.SaveAs(Server.MapPath(@"~/"+FileUpload1.FileName));
    string fileName = "~/offerimages/" + fname;
    //save the file to our local path
    FileUpload1.SaveAs(Server.MapPath(fileName));

    string save = "insert into newoffer(pid,oitemname,image,price,date,discription)values('" + txtid.Text + "','" + txtname.Text + "','" + fileName + "','" + txtprice.Text + "','" + txtdate.Text + "','" + txtdiscription.Text + "')";
    foodfantacy ob = new foodfantacy();
    ob.FoodI(save);
    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('New Offer Added Sucessfully');", true);

    SqlDataSource1.SelectCommand = "select * from newoffer";
    //DetailsView1.DataSourceID = "SqlDataSource1";
}
}


