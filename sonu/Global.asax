<%@ Application Language="C#" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
        DataTable ta1 = new DataTable();
        DataColumn pid = new DataColumn("product_id", typeof(int));
        ta1.Columns.Add(pid);
        DataColumn itemtype = new DataColumn("Item_type", typeof(string));
        ta1.Columns.Add(itemtype);
        DataColumn itemname = new DataColumn("Item_Name", typeof(string));
        ta1.Columns.Add(itemname);
        DataColumn price = new DataColumn("Price", typeof(int));
        ta1.Columns.Add(price);
        DataColumn quantity = new DataColumn("Quantity", typeof(int));
        ta1.Columns.Add(quantity);
        DataColumn total = new DataColumn("Total", typeof(int));
        ta1.Columns.Add(total);
       
        Session["cart"] = ta1;
    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>
