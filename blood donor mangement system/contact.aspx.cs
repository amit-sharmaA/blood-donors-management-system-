using System;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string fullName = txtFullName.Text;
        string email = txtEmail.Text;
        string message = txtMessage.Text;

        string connectionString = "Data Source=LAPTOP-IOQL3E53\\SQLEXPRESS;Initial Catalog=BloodDB;Integrated Security=True";
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string query = "INSERT INTO ContactForm (FullName, Email, Message) VALUES (@FullName, @Email, @Message)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@FullName", fullName);
            cmd.Parameters.AddWithValue("@Email", email);
            cmd.Parameters.AddWithValue("@Message", message);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            // Optionally, display a success message
            Response.Write("<script>alert('Message sent successfully!');</script>");
        }
    }
}
