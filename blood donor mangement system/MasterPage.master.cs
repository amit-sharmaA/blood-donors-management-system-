using System;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] == null)
            {
                LiLogin.Visible = false; // Show Login if the user is not logged in
                Li2.Visible = true;    // Hide Services or other links
            }
            else
            {
                LiLogin.Visible = false; // Hide Login link
                Li2.Visible = true;      // Show Services or other logged-in links
            }
        }
    }
}
