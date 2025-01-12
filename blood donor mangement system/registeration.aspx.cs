using System;

public partial class registeration : System.Web.UI.Page
{
    // Method that handles the TextChanged event
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {
        // Example: Display a message when the text changes
        string phoneNumber = Txt_firstphone.Text;
        if (string.IsNullOrEmpty(phoneNumber))
        {
            // Perform an action or validation when the phone number is empty
            Response.Write("<script>alert('Phone number cannot be empty.');</script>");
        }
        else
        {
            // Process the phone number as needed
            Response.Write("<script>alert('Phone number changed to: " + phoneNumber + "');</script>");
        }
    }

    // Submit button click event (for the registration form)
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Your form submission logic here
        string username = Txt_UserName.Text;
        string email = Txt_Email.Text;
        string phoneNumber = Txt_firstphone.Text;

        // Perform validation, save data to database, etc.

        // For example, just display a success message
        Response.Write("<script>alert('Registration successful!');</script>");
    }
}
