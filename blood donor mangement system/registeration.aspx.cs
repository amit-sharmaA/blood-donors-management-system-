using System;
using System.Data.SqlClient;
using System.Web.UI;

public partial class registeration : Page
{
    protected void Btn_Submit_Click(object sender, EventArgs e)
    {
        string fullName = Txt_FullName.Text.Trim();
        string gender = Drp_Gender.SelectedValue;
        string dob = Txt_DOB.Text.Trim();
        string weight = Txt_Weight.Text.Trim();
        string bloodGroup = Drp_BloodGroup.SelectedValue;
        string mobileNumber = Txt_Mobile.Text.Trim();
        string emailAddress = Txt_Email.Text.Trim();
        string address = Txt_Address.Text.Trim();
        string password = Txt_Password.Text.Trim();
        string confirmPassword = Txt_ConfirmPassword.Text.Trim();
        string previousDonations = Drp_PreviousDonations.SelectedValue;

        // Required field validation
        if (string.IsNullOrWhiteSpace(fullName) || string.IsNullOrWhiteSpace(emailAddress) || string.IsNullOrWhiteSpace(mobileNumber) || string.IsNullOrWhiteSpace(password))
        {
            DisplayMessage("Please fill in all required fields.", System.Drawing.Color.Red);
            return;
        }

        // Validate password strength
        if (password.Length < 6)
        {
            DisplayMessage("Password must be at least 6 characters long.", System.Drawing.Color.Red);
            return;
        }

        // Confirm password validation
        if (password != confirmPassword)
        {
            DisplayMessage("Password and Confirm Password do not match.", System.Drawing.Color.Red);
            return;
        }

        // Validate date format for DOB using exact format 'yyyy-MM-dd'
        DateTime parsedDOB;
        if (!DateTime.TryParseExact(dob, "yyyy-MM-dd", null, System.Globalization.DateTimeStyles.None, out parsedDOB))
        {
            DisplayMessage("Invalid date format for Date of Birth. Use YYYY-MM-DD.", System.Drawing.Color.Red);
            return;
        }

        // Validate weight
        decimal parsedWeight;
        if (string.IsNullOrWhiteSpace(weight) || !decimal.TryParse(weight, out parsedWeight))
        {
            DisplayMessage("Invalid weight. Please enter a valid number.", System.Drawing.Color.Red);
            return;
        }

        // Insert data into the database
        try
        {
            using (SqlConnection conn = new SqlConnection("Data Source=LAPTOP-IOQL3E53\\SQLEXPRESS;Initial Catalog=BloodDB;Integrated Security=True"))
            {
                string query = @"
                    INSERT INTO BloodDonorRegistration 
                    (FullName, Gender, DOB, Weight, BloodGroup, MobileNumber, EmailAddress, Address, Password, PreviousDonations) 
                    VALUES 
                    (@FullName, @Gender, @DOB, @Weight, @BloodGroup, @MobileNumber, @EmailAddress, @Address, @Password, @PreviousDonations)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FullName", fullName);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@DOB", parsedDOB);
                    cmd.Parameters.AddWithValue("@Weight", parsedWeight);
                    cmd.Parameters.AddWithValue("@BloodGroup", bloodGroup);
                    cmd.Parameters.AddWithValue("@MobileNumber", mobileNumber);
                    cmd.Parameters.AddWithValue("@EmailAddress", emailAddress);
                    cmd.Parameters.AddWithValue("@Address", string.IsNullOrWhiteSpace(address) ? (object)DBNull.Value : address);
                    cmd.Parameters.AddWithValue("@Password", password);
                    cmd.Parameters.AddWithValue("@PreviousDonations", previousDonations);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        DisplayMessage("Registration successful!", System.Drawing.Color.Green);
                        ClearFields();
                    }
                    else
                    {
                        DisplayMessage("Registration failed. Please try again.", System.Drawing.Color.Red);
                    }
                }
            }
        }
        catch (Exception ex)
        {
            DisplayMessage("An error occurred: " + ex.Message, System.Drawing.Color.Red);
        }
    }

    private void ClearFields()
    {
        // Clear the form fields after successful registration
        Txt_FullName.Text = string.Empty;
        Drp_Gender.SelectedIndex = 0;
        Txt_DOB.Text = string.Empty;
        Txt_Weight.Text = string.Empty;
        Drp_BloodGroup.SelectedIndex = 0;
        Txt_Mobile.Text = string.Empty;
        Txt_Email.Text = string.Empty;
        Txt_Address.Text = string.Empty;
        Txt_Password.Text = string.Empty;
        Txt_ConfirmPassword.Text = string.Empty;
        Drp_PreviousDonations.SelectedIndex = 0;
    }

    private void DisplayMessage(string message, System.Drawing.Color color)
    {
        // Display the message to the user
        lblMessage.Text = message;
        lblMessage.ForeColor = color;
    }
}
