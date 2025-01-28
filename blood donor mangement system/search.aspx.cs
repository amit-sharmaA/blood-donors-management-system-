using System;
using System.Data;
using System.Web.UI.WebControls;

public partial class search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            PopulateCountryDropdown();
        }
    }

    private void PopulateCountryDropdown()
    {
        ddlCountry.Items.Clear();
        ddlCountry.Items.Add(new ListItem("-----Select-----", "Select"));
        ddlCountry.Items.Add(new ListItem("INDIA", "INDIA"));
        ddlCountry.Items.Add(new ListItem("YEMEN", "YEMEN"));
        ddlCountry.Items.Add(new ListItem("NEPAL", "NEPAL"));
        ddlCountry.Items.Add(new ListItem("SRI LANKA", "SRI LANKA"));
        ddlCountry.Items.Add(new ListItem("BANGLADESH", "BANGLADESH"));
    }

    protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedCountry = ddlCountry.SelectedValue;

        ddlState.Items.Clear();
        ddlState.Items.Add(new ListItem("-----Select-----", ""));

        if (selectedCountry == "INDIA")
        {
            ddlState.Items.Add(new ListItem("DELHI", "Delhi"));
            ddlState.Items.Add(new ListItem("MAHARASHTRA", "Maharashtra"));
            ddlState.Items.Add(new ListItem("TAMIL NADU", "Tamil Nadu"));
            ddlState.Items.Add(new ListItem("KARNATAKA", "Karnataka"));
            ddlState.Items.Add(new ListItem("GUJARAT", "Gujarat"));
            ddlState.Items.Add(new ListItem("UTTAR PRADESH", "Uttar Pradesh"));
            ddlState.Items.Add(new ListItem("RAJASTHAN", "Rajasthan"));
            ddlState.Items.Add(new ListItem("KERALA", "Kerala"));
            ddlState.Items.Add(new ListItem("WEST BENGAL", "West Bengal"));
            ddlState.Items.Add(new ListItem("PUNJAB", "Punjab"));
            ddlState.Items.Add(new ListItem("BIHAR", "Bihar"));
            ddlState.Items.Add(new ListItem("ANDHRA PRADESH", "Andhra Pradesh"));
            ddlState.Items.Add(new ListItem("HARYANA", "Haryana"));
            ddlState.Items.Add(new ListItem("MADHYA PRADESH", "Madhya Pradesh"));
            ddlState.Items.Add(new ListItem("ODISHA", "Odisha"));
            ddlState.Items.Add(new ListItem("ASSAM", "Assam"));
            ddlState.Items.Add(new ListItem("CHHATTISGARH", "Chhattisgarh"));
            ddlState.Items.Add(new ListItem("JAMMU AND KASHMIR", "Jammu and Kashmir"));
            ddlState.Items.Add(new ListItem("JHARKHAND", "Jharkhand"));
            ddlState.Items.Add(new ListItem("GOA", "Goa"));
            ddlState.Items.Add(new ListItem("HIMACHAL PRADESH", "Himachal Pradesh"));
            ddlState.Items.Add(new ListItem("TRIPURA", "Tripura"));
            ddlState.Items.Add(new ListItem("MEGHALAYA", "Meghalaya"));
            ddlState.Items.Add(new ListItem("MANIPUR", "Manipur"));
            ddlState.Items.Add(new ListItem("MIZORAM", "Mizoram"));
            ddlState.Items.Add(new ListItem("NAGALAND", "Nagaland"));
            ddlState.Items.Add(new ListItem("SIKKIM", "Sikkim"));
            ddlState.Items.Add(new ListItem("ARUNACHAL PRADESH", "Arunachal Pradesh"));
            ddlState.Items.Add(new ListItem("UTTARAKHAND", "Uttarakhand"));
            ddlState.Items.Add(new ListItem("PUDUCHERRY", "Puducherry"));
        }

        else if (selectedCountry == "YEMEN")
        {
            ddlState.Items.Add(new ListItem("ADEN", "Aden"));
            ddlState.Items.Add(new ListItem("SANA'A", "Sana'a"));
        }
        else if (selectedCountry == "NEPAL")
        {
            ddlState.Items.Add(new ListItem("BAGMATI", "Bagmati"));
            ddlState.Items.Add(new ListItem("LUMBINI", "Lumbini"));
        }
    }

    protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlDistrict.Items.Clear();
        ddlDistrict.Items.Add(new ListItem("Select District", ""));

        if (ddlState.SelectedValue == "Delhi")
        {
            ddlDistrict.Items.Add(new ListItem("New Delhi", "New Delhi"));
            ddlDistrict.Items.Add(new ListItem("Central Delhi", "Central Delhi"));
            ddlDistrict.Items.Add(new ListItem("North Delhi", "North Delhi"));
            ddlDistrict.Items.Add(new ListItem("South Delhi", "South Delhi"));
            ddlDistrict.Items.Add(new ListItem("East Delhi", "East Delhi"));
            ddlDistrict.Items.Add(new ListItem("West Delhi", "West Delhi"));
            ddlDistrict.Items.Add(new ListItem("Shahdara", "Shahdara"));
        }
        else if (ddlState.SelectedValue == "Maharashtra")
        {
            ddlDistrict.Items.Add(new ListItem("Mumbai", "Mumbai"));
            ddlDistrict.Items.Add(new ListItem("Pune", "Pune"));
            ddlDistrict.Items.Add(new ListItem("Nagpur", "Nagpur"));
            ddlDistrict.Items.Add(new ListItem("Nashik", "Nashik"));
            ddlDistrict.Items.Add(new ListItem("Thane", "Thane"));
            ddlDistrict.Items.Add(new ListItem("Aurangabad", "Aurangabad"));
            ddlDistrict.Items.Add(new ListItem("Kolhapur", "Kolhapur"));
        }
        else if (ddlState.SelectedValue == "Tamil Nadu")
        {
            ddlDistrict.Items.Add(new ListItem("Chennai", "Chennai"));
            ddlDistrict.Items.Add(new ListItem("Coimbatore", "Coimbatore"));
            ddlDistrict.Items.Add(new ListItem("Madurai", "Madurai"));
            ddlDistrict.Items.Add(new ListItem("Tiruchirappalli", "Tiruchirappalli"));
            ddlDistrict.Items.Add(new ListItem("Salem", "Salem"));
            ddlDistrict.Items.Add(new ListItem("Erode", "Erode"));
        }
        else if (ddlState.SelectedValue == "Karnataka")
        {
            ddlDistrict.Items.Add(new ListItem("Bengaluru", "Bengaluru"));
            ddlDistrict.Items.Add(new ListItem("Mysuru", "Mysuru"));
            ddlDistrict.Items.Add(new ListItem("Mangaluru", "Mangaluru"));
            ddlDistrict.Items.Add(new ListItem("Hubballi", "Hubballi"));
            ddlDistrict.Items.Add(new ListItem("Belagavi", "Belagavi"));
            ddlDistrict.Items.Add(new ListItem("Kalaburagi", "Kalaburagi"));
        }
        else if (ddlState.SelectedValue == "Uttar Pradesh")
        {
            ddlDistrict.Items.Add(new ListItem("Lucknow", "Lucknow"));
            ddlDistrict.Items.Add(new ListItem("Kanpur", "Kanpur"));
            ddlDistrict.Items.Add(new ListItem("Varanasi", "Varanasi"));
            ddlDistrict.Items.Add(new ListItem("Agra", "Agra"));
            ddlDistrict.Items.Add(new ListItem("Meerut", "Meerut"));
            ddlDistrict.Items.Add(new ListItem("Prayagraj", "Prayagraj"));
        }
        else if (ddlState.SelectedValue == "Gujarat")
        {
            ddlDistrict.Items.Add(new ListItem("Ahmedabad", "Ahmedabad"));
            ddlDistrict.Items.Add(new ListItem("Surat", "Surat"));
            ddlDistrict.Items.Add(new ListItem("Vadodara", "Vadodara"));
            ddlDistrict.Items.Add(new ListItem("Rajkot", "Rajkot"));
            ddlDistrict.Items.Add(new ListItem("Bhavnagar", "Bhavnagar"));
            ddlDistrict.Items.Add(new ListItem("Jamnagar", "Jamnagar"));
            ddlDistrict.Items.Add(new ListItem("Junagadh", "Junagadh"));
            ddlDistrict.Items.Add(new ListItem("Gandhinagar", "Gandhinagar"));
            ddlDistrict.Items.Add(new ListItem("Anand", "Anand"));
            ddlDistrict.Items.Add(new ListItem("Kutch", "Kutch"));
            ddlDistrict.Items.Add(new ListItem("Patan", "Patan"));
            ddlDistrict.Items.Add(new ListItem("Navsari", "Navsari"));
            ddlDistrict.Items.Add(new ListItem("Valsad", "Valsad"));
            ddlDistrict.Items.Add(new ListItem("Mehsana", "Mehsana"));
        }
        else if (ddlState.SelectedValue == "Rajasthan")
        {
            ddlDistrict.Items.Add(new ListItem("Jaipur", "Jaipur"));
            ddlDistrict.Items.Add(new ListItem("Jodhpur", "Jodhpur"));
            ddlDistrict.Items.Add(new ListItem("Udaipur", "Udaipur"));
            ddlDistrict.Items.Add(new ListItem("Ajmer", "Ajmer"));
            ddlDistrict.Items.Add(new ListItem("Kota", "Kota"));
            ddlDistrict.Items.Add(new ListItem("Bikaner", "Bikaner"));
            ddlDistrict.Items.Add(new ListItem("Alwar", "Alwar"));
            ddlDistrict.Items.Add(new ListItem("Bhilwara", "Bhilwara"));
            ddlDistrict.Items.Add(new ListItem("Sikar", "Sikar"));
            ddlDistrict.Items.Add(new ListItem("Pali", "Pali"));
            ddlDistrict.Items.Add(new ListItem("Nagaur", "Nagaur"));
            ddlDistrict.Items.Add(new ListItem("Barmer", "Barmer"));
            ddlDistrict.Items.Add(new ListItem("Tonk", "Tonk"));
            ddlDistrict.Items.Add(new ListItem("Churu", "Churu"));
            ddlDistrict.Items.Add(new ListItem("Jhunjhunu", "Jhunjhunu"));
        }
        else if (ddlState.SelectedValue == "Kerala")
        {
            ddlDistrict.Items.Add(new ListItem("Thiruvananthapuram", "Thiruvananthapuram"));
            ddlDistrict.Items.Add(new ListItem("Kollam", "Kollam"));
            ddlDistrict.Items.Add(new ListItem("Pathanamthitta", "Pathanamthitta"));
            ddlDistrict.Items.Add(new ListItem("Alappuzha", "Alappuzha"));
            ddlDistrict.Items.Add(new ListItem("Kottayam", "Kottayam"));
            ddlDistrict.Items.Add(new ListItem("Idukki", "Idukki"));
            ddlDistrict.Items.Add(new ListItem("Ernakulam", "Ernakulam"));
            ddlDistrict.Items.Add(new ListItem("Thrissur", "Thrissur"));
            ddlDistrict.Items.Add(new ListItem("Palakkad", "Palakkad"));
            ddlDistrict.Items.Add(new ListItem("Malappuram", "Malappuram"));
            ddlDistrict.Items.Add(new ListItem("Kozhikode", "Kozhikode"));
            ddlDistrict.Items.Add(new ListItem("Wayanad", "Wayanad"));
            ddlDistrict.Items.Add(new ListItem("Kannur", "Kannur"));
            ddlDistrict.Items.Add(new ListItem("Kasaragod", "Kasaragod"));
        }
        else if (ddlState.SelectedValue == "West Bengal")
        {
            ddlDistrict.Items.Add(new ListItem("Kolkata", "Kolkata"));
            ddlDistrict.Items.Add(new ListItem("Howrah", "Howrah"));
            ddlDistrict.Items.Add(new ListItem("Darjeeling", "Darjeeling"));
            ddlDistrict.Items.Add(new ListItem("Siliguri", "Siliguri"));
            ddlDistrict.Items.Add(new ListItem("Asansol", "Asansol"));
            ddlDistrict.Items.Add(new ListItem("Durgapur", "Durgapur"));
            ddlDistrict.Items.Add(new ListItem("Malda", "Malda"));
            ddlDistrict.Items.Add(new ListItem("Midnapore", "Midnapore"));
            ddlDistrict.Items.Add(new ListItem("Nadia", "Nadia"));
            ddlDistrict.Items.Add(new ListItem("Birbhum", "Birbhum"));
            ddlDistrict.Items.Add(new ListItem("Murshidabad", "Murshidabad"));
            ddlDistrict.Items.Add(new ListItem("Cooch Behar", "Cooch Behar"));
            ddlDistrict.Items.Add(new ListItem("Bankura", "Bankura"));
            ddlDistrict.Items.Add(new ListItem("Purulia", "Purulia"));
            ddlDistrict.Items.Add(new ListItem("North 24 Parganas", "North 24 Parganas"));
            ddlDistrict.Items.Add(new ListItem("South 24 Parganas", "South 24 Parganas"));
            ddlDistrict.Items.Add(new ListItem("Alipurduar", "Alipurduar"));
        }
        else if (ddlState.SelectedValue == "Punjab")
        {
            ddlDistrict.Items.Add(new ListItem("Amritsar", "Amritsar"));
            ddlDistrict.Items.Add(new ListItem("Ludhiana", "Ludhiana"));
            ddlDistrict.Items.Add(new ListItem("Jalandhar", "Jalandhar"));
            ddlDistrict.Items.Add(new ListItem("Patiala", "Patiala"));
            ddlDistrict.Items.Add(new ListItem("Bathinda", "Bathinda"));
            ddlDistrict.Items.Add(new ListItem("Mohali", "Mohali"));
            ddlDistrict.Items.Add(new ListItem("Hoshiarpur", "Hoshiarpur"));
            ddlDistrict.Items.Add(new ListItem("Moga", "Moga"));
            ddlDistrict.Items.Add(new ListItem("Pathankot", "Pathankot"));
            ddlDistrict.Items.Add(new ListItem("Firozpur", "Firozpur"));
            ddlDistrict.Items.Add(new ListItem("Sangrur", "Sangrur"));
            ddlDistrict.Items.Add(new ListItem("Gurdaspur", "Gurdaspur"));
            ddlDistrict.Items.Add(new ListItem("Faridkot", "Faridkot"));
            ddlDistrict.Items.Add(new ListItem("Kapurthala", "Kapurthala"));
        }
        else if (ddlState.SelectedValue == "Bihar")
        {
            ddlDistrict.Items.Add(new ListItem("Patna", "Patna"));
            ddlDistrict.Items.Add(new ListItem("Gaya", "Gaya"));
            ddlDistrict.Items.Add(new ListItem("Bhagalpur", "Bhagalpur"));
            ddlDistrict.Items.Add(new ListItem("Muzaffarpur", "Muzaffarpur"));
            ddlDistrict.Items.Add(new ListItem("Darbhanga", "Darbhanga"));
            ddlDistrict.Items.Add(new ListItem("Purnia", "Purnia"));
            ddlDistrict.Items.Add(new ListItem("Begusarai", "Begusarai"));
            ddlDistrict.Items.Add(new ListItem("Chapra", "Chapra"));
            ddlDistrict.Items.Add(new ListItem("Samastipur", "Samastipur"));
            ddlDistrict.Items.Add(new ListItem("Katihar", "Katihar"));
            ddlDistrict.Items.Add(new ListItem("Siwan", "Siwan"));
            ddlDistrict.Items.Add(new ListItem("Arrah", "Arrah"));
            ddlDistrict.Items.Add(new ListItem("Motihari", "Motihari"));
            ddlDistrict.Items.Add(new ListItem("Sasaram", "Sasaram"));
            ddlDistrict.Items.Add(new ListItem("Bettiah", "Bettiah"));
        }
        else if (ddlState.SelectedValue == "Andhra Pradesh")
        {
            ddlDistrict.Items.Add(new ListItem("Visakhapatnam", "Visakhapatnam"));
            ddlDistrict.Items.Add(new ListItem("Vijayawada", "Vijayawada"));
            ddlDistrict.Items.Add(new ListItem("Guntur", "Guntur"));
            ddlDistrict.Items.Add(new ListItem("Tirupati", "Tirupati"));
            ddlDistrict.Items.Add(new ListItem("Kurnool", "Kurnool"));
            ddlDistrict.Items.Add(new ListItem("Nellore", "Nellore"));
            ddlDistrict.Items.Add(new ListItem("Rajahmundry", "Rajahmundry"));
            ddlDistrict.Items.Add(new ListItem("Chittoor", "Chittoor"));
            ddlDistrict.Items.Add(new ListItem("Anantapur", "Anantapur"));
        }
        else if (ddlState.SelectedValue == "Haryana")
        {
            ddlDistrict.Items.Add(new ListItem("Gurugram", "Gurugram"));
            ddlDistrict.Items.Add(new ListItem("Faridabad", "Faridabad"));
            ddlDistrict.Items.Add(new ListItem("Ambala", "Ambala"));
            ddlDistrict.Items.Add(new ListItem("Hisar", "Hisar"));
            ddlDistrict.Items.Add(new ListItem("Karnal", "Karnal"));
        }
        else if (ddlState.SelectedValue == "Madhya Pradesh")
        {
            ddlDistrict.Items.Add(new ListItem("Bhopal", "Bhopal"));
            ddlDistrict.Items.Add(new ListItem("Indore", "Indore"));
            ddlDistrict.Items.Add(new ListItem("Gwalior", "Gwalior"));
            ddlDistrict.Items.Add(new ListItem("Jabalpur", "Jabalpur"));
            ddlDistrict.Items.Add(new ListItem("Ujjain", "Ujjain"));
        }
        else if (ddlState.SelectedValue == "Odisha")
        {
            ddlDistrict.Items.Add(new ListItem("Bhubaneswar", "Bhubaneswar"));
            ddlDistrict.Items.Add(new ListItem("Cuttack", "Cuttack"));
            ddlDistrict.Items.Add(new ListItem("Berhampur", "Berhampur"));
            ddlDistrict.Items.Add(new ListItem("Rourkela", "Rourkela"));
            ddlDistrict.Items.Add(new ListItem("Sambalpur", "Sambalpur"));
        }
        else if (ddlState.SelectedValue == "Assam")
        {
            ddlDistrict.Items.Add(new ListItem("Guwahati", "Guwahati"));
            ddlDistrict.Items.Add(new ListItem("Dibrugarh", "Dibrugarh"));
            ddlDistrict.Items.Add(new ListItem("Jorhat", "Jorhat"));
            ddlDistrict.Items.Add(new ListItem("Silchar", "Silchar"));
            ddlDistrict.Items.Add(new ListItem("Nagaon", "Nagaon"));
        }
        else if (ddlState.SelectedValue == "Chhattisgarh")
        {
            ddlDistrict.Items.Add(new ListItem("Raipur", "Raipur"));
            ddlDistrict.Items.Add(new ListItem("Bilaspur", "Bilaspur"));
            ddlDistrict.Items.Add(new ListItem("Korba", "Korba"));
            ddlDistrict.Items.Add(new ListItem("Durg", "Durg"));
            ddlDistrict.Items.Add(new ListItem("Rajnandgaon", "Rajnandgaon"));
        }
        else if (ddlState.SelectedValue == "Jammu and Kashmir")
        {
            ddlDistrict.Items.Add(new ListItem("Srinagar", "Srinagar"));
            ddlDistrict.Items.Add(new ListItem("Jammu", "Jammu"));
            ddlDistrict.Items.Add(new ListItem("Baramulla", "Baramulla"));
            ddlDistrict.Items.Add(new ListItem("Anantnag", "Anantnag"));
            ddlDistrict.Items.Add(new ListItem("Kupwara", "Kupwara"));
        }
        else if (ddlState.SelectedValue == "Jharkhand")
        {
            ddlDistrict.Items.Add(new ListItem("Ranchi", "Ranchi"));
            ddlDistrict.Items.Add(new ListItem("Jamshedpur", "Jamshedpur"));
            ddlDistrict.Items.Add(new ListItem("Dhanbad", "Dhanbad"));
            ddlDistrict.Items.Add(new ListItem("Hazaribagh", "Hazaribagh"));
            ddlDistrict.Items.Add(new ListItem("Giridih", "Giridih"));
        }
        else if (ddlState.SelectedValue == "Goa")
        {
            ddlDistrict.Items.Add(new ListItem("Panaji", "Panaji"));
            ddlDistrict.Items.Add(new ListItem("Margao", "Margao"));
            ddlDistrict.Items.Add(new ListItem("Vasco da Gama", "Vasco da Gama"));
            ddlDistrict.Items.Add(new ListItem("Mapusa", "Mapusa"));
        }
        else if (ddlState.SelectedValue == "Himachal Pradesh")
        {
            ddlDistrict.Items.Add(new ListItem("Shimla", "Shimla"));
            ddlDistrict.Items.Add(new ListItem("Manali", "Manali"));
            ddlDistrict.Items.Add(new ListItem("Kullu", "Kullu"));
            ddlDistrict.Items.Add(new ListItem("Kangra", "Kangra"));
            ddlDistrict.Items.Add(new ListItem("Solan", "Solan"));
        }
        else if (ddlState.SelectedValue == "Tripura")
        {
            ddlDistrict.Items.Add(new ListItem("Agartala", "Agartala"));
            ddlDistrict.Items.Add(new ListItem("Unakoti", "Unakoti"));
            ddlDistrict.Items.Add(new ListItem("West Tripura", "West Tripura"));
            ddlDistrict.Items.Add(new ListItem("Sepahijala", "Sepahijala"));
        }
        else if (ddlState.SelectedValue == "Meghalaya")
        {
            ddlDistrict.Items.Add(new ListItem("Shillong", "Shillong"));
            ddlDistrict.Items.Add(new ListItem("Tura", "Tura"));
            ddlDistrict.Items.Add(new ListItem("Jowai", "Jowai"));
            ddlDistrict.Items.Add(new ListItem("Nongpoh", "Nongpoh"));
        }
        else if (ddlState.SelectedValue == "Manipur")
        {
            ddlDistrict.Items.Add(new ListItem("Imphal", "Imphal"));
            ddlDistrict.Items.Add(new ListItem("Bishnupur", "Bishnupur"));
            ddlDistrict.Items.Add(new ListItem("Churachandpur", "Churachandpur"));
            ddlDistrict.Items.Add(new ListItem("Thoubal", "Thoubal"));
        }
        else if (ddlState.SelectedValue == "Mizoram")
        {
            ddlDistrict.Items.Add(new ListItem("Aizawl", "Aizawl"));
            ddlDistrict.Items.Add(new ListItem("Champhai", "Champhai"));
            ddlDistrict.Items.Add(new ListItem("Kolasib", "Kolasib"));
            ddlDistrict.Items.Add(new ListItem("Mamit", "Mamit"));
        }
        else if (ddlState.SelectedValue == "Nagaland")
        {
            ddlDistrict.Items.Add(new ListItem("Kohima", "Kohima"));
            ddlDistrict.Items.Add(new ListItem("Dimapur", "Dimapur"));
            ddlDistrict.Items.Add(new ListItem("Mokokchung", "Mokokchung"));
            ddlDistrict.Items.Add(new ListItem("Mon", "Mon"));
        }
        else if (ddlState.SelectedValue == "Sikkim")
        {
            ddlDistrict.Items.Add(new ListItem("Gangtok", "Gangtok"));
            ddlDistrict.Items.Add(new ListItem("Mangan", "Mangan"));
            ddlDistrict.Items.Add(new ListItem("South Sikkim", "South Sikkim"));
        }
        else if (ddlState.SelectedValue == "Arunachal Pradesh")
        {
            ddlDistrict.Items.Add(new ListItem("Itanagar", "Itanagar"));
            ddlDistrict.Items.Add(new ListItem("Tawang", "Tawang"));
            ddlDistrict.Items.Add(new ListItem("Papum Pare", "Papum Pare"));
            ddlDistrict.Items.Add(new ListItem("West Kameng", "West Kameng"));
        }
        else if (ddlState.SelectedValue == "Uttarakhand")
        {
            ddlDistrict.Items.Add(new ListItem("Dehradun", "Dehradun"));
            ddlDistrict.Items.Add(new ListItem("Haridwar", "Haridwar"));
            ddlDistrict.Items.Add(new ListItem("Nainital", "Nainital"));
            ddlDistrict.Items.Add(new ListItem("Rishikesh", "Rishikesh"));
        }
        else if (ddlState.SelectedValue == "Puducherry")
        {
            ddlDistrict.Items.Add(new ListItem("Puducherry", "Puducherry"));
            ddlDistrict.Items.Add(new ListItem("Karaikal", "Karaikal"));
            ddlDistrict.Items.Add(new ListItem("Mahe", "Mahe"));
            ddlDistrict.Items.Add(new ListItem("Yanam", "Yanam"));
        }

    }


    protected void btnSearch_Click(object sender, EventArgs e)
    {
        // Sample data for testing
        DataTable dt = new DataTable();
        dt.Columns.Add("Name");
        dt.Columns.Add("BloodGroup");
        dt.Columns.Add("Age");
        dt.Columns.Add("City");

        dt.Rows.Add("John Doe", "A+", "30", "Mumbai");
        dt.Rows.Add("Jane Smith", "O-", "25", "Delhi");

        gvDonors.DataSource = dt;
        gvDonors.DataBind();
        pnlResults.Visible = true;
    }
}
