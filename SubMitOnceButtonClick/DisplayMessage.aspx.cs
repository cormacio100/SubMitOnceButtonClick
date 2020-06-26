using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DisplayMessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //  Use Sleep() to simulate server side processing, for example: saving data into database, etc
        System.Threading.Thread.Sleep(2000);

        //  processing complete. Show a message or redirect user to another page
        lblNote.Text = "Your data has been submitted successfully";

        clearForm();
    }

    protected void clearForm()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}