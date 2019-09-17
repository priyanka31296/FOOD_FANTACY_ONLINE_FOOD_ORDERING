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

public partial class AItemMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string fname = Path.GetFileName(FileUpload1.FileName);
        string fileName = "~/offerimages/" + fname;
        //save the file to our local path
        FileUpload1.SaveAs(Server.MapPath(fileName));
        

        string save = "insert into ItemMaster(iid,itemName,itemType,itemImage,price)values('" + txtid.Text + "','" + txtitemname.Text + "','"+ DDL.Text +"','" + fileName + "','" + txtprice.Text + "')";
        foodfantacy ob = new foodfantacy();
        ob.FoodI(save);
        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Item added succefully Sucessfully');", true);

        SqlDataSource1.SelectCommand = "select * from ItemMaster";
        //DetailsView1.DataSourceID = "SqlDataSource1";

       
         
            txtid.Text = "";
            
            txtitemname.Text = "";
            txtprice.Text = "";
            
            return;
        
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";

        }
        else if (RadioButtonList1.SelectedIndex == 1)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";

        }
        else if (RadioButtonList1.SelectedIndex == 2)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";

        }
        else if (RadioButtonList1.SelectedIndex == 3)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";
        }
        else if (RadioButtonList1.SelectedIndex == 4)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";
        }
        else if (RadioButtonList1.SelectedIndex == 5)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";
        }
        else if (RadioButtonList1.SelectedIndex == 6)
        {

            string retrive = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            foodfantacy obj = new foodfantacy();
            //DataTable obj = new DataTable();
            SqlDataSource1.SelectCommand = "select * from ItemMaster where itemType='" + RadioButtonList1.SelectedItem.Text + "'";
            //DetailsView1.DataSourceID = "SqlDataSource1";
        }
    }
   
}
