using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary
/// Summary description for foodfantacy
/// </summary>
public class foodfantacy
{

    public void FoodI(string InsertQuery)
    {

        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand(InsertQuery, con);
        cmd.ExecuteNonQuery();
        con.Close();


    }
    public DataTable FoodS(string SelectQuery)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand(SelectQuery, con);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable ta = new DataTable();
        da.Fill(ta);
        con.Close();
        return ta;
    }
    public
string
checkRole(string SelectQuery)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlDataReader dr;
        SqlCommand cmd = new SqlCommand(SelectQuery, con);
        dr = cmd.ExecuteReader();
        string
 role1 =
"";
        while
         (dr.Read())
        {
            role1 = dr[
            "role"].ToString();
        }
        dr.Close();
        con.Close();
        return
         role1;
    }


    public int getOdernum(string selectQuery)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\FoodFanctsy.mdf;Integrated Security=True;User Instance=True");
        con.Open();
        SqlCommand cmd = new SqlCommand(selectQuery, con);
        int ord = (int)cmd.ExecuteScalar();
        con.Close();
        return ord;
    }


  
}
    

 


