using System;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // You can add any page load logic if needed.
    }

    protected void btnLogin_Click1(object sender, EventArgs e)
    {
        string email = txtLoginEmail.Text.Trim();  // Get the email from the textbox
        string password = txtPassword.Text.Trim();  // Get the password from the textbox

        // Validate inputs
        if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(password))
        {
            lblLog.Text = "Please enter both email and password.";
            lblLog.ForeColor = System.Drawing.Color.Red;
            return;
        }

        // Call method to validate login
        ValidateLogin(email, password);
    }

    private void ValidateLogin(string email, string password)
    {
        try
        {
            // Connection string to your database
            using (SqlConnection conn = new SqlConnection("Data Source=LAPTOP-IOQL3E53\\SQLEXPRESS;Initial Catalog=BloodDB;Integrated Security=True"))
            {
                // Query to check if the email and password match any record in the BloodDonorRegistration table
                string query = "SELECT COUNT(*) FROM BloodDonorRegistration WHERE EmailAddress=@EmailAddress AND Password=@Password";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    // Add parameters with proper values
                    cmd.Parameters.AddWithValue("@EmailAddress", email);
                    cmd.Parameters.AddWithValue("@Password", password);

                    conn.Open();
                    int userExists = Convert.ToInt32(cmd.ExecuteScalar()); // Execute and get the result

                    if (userExists > 0)
                    {
                        // If credentials are valid, redirect to the index page (or user dashboard)
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        // Invalid credentials
                        lblLog.Text = "Invalid email or password.";
                        lblLog.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }
        catch (Exception ex)
        {
            // Handle any errors that occur during login
            lblLog.Text = "An error occurred: " + ex.Message;
            lblLog.ForeColor = System.Drawing.Color.Red;
        }
    }
}
