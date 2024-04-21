using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Gym_Website_DB_Project
{
    public partial class usersignup : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // sign up button click event
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckMemberExists())
            {
                Response.Write("<script>alert('Member Already Exist With This Id. Try Another Id.');</script>");
            }
            else
            {
                SignUpNewUser();
            }
        }

        // user defined method
        bool CheckMemberExists ()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon); // make the connection object using the connection string
                if (con.State == ConnectionState.Closed)
                {
                    con.Open(); // if the connection is closed we should open it
                }

                // ok so what basically happened in this query is we look for a record which corresponds to the value of the member id coming from the frontend
                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl WHERE member_id='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd); // we make a disconnected connection from the database
                DataTable dt = new DataTable(); // this is a datatable which can be filled with the results of executing queries
                da.Fill(dt); // we can fill the datatable with the result of the query

                if (dt.Rows.Count >= 1)
                {
                    con.Close();
                    return true;
                } 
                else
                {
                    con.Close();
                    return false;
                }
                    
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
        }

        void SignUpNewUser()
        {
            //Response.Write("<script>alert('testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon); // make the connection object using the connection string
                if (con.State == ConnectionState.Closed)
                {
                    con.Open(); // if the connection is closed we should open it
                }

                // ok so what basically happened in this query is we added @ sign with a parameter name which would act like a placeholder, then we can use those placeholders to populate the data from the textboxes in the frontend
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(full_name, dob, contact_no, email, state, city, pincode, full_address, member_id, password, account_status) VALUES (@full_name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address, @member_id, @password, @account_status) ", con);

                cmd.Parameters.AddWithValue("@full_name", TextBox1.Text.Trim()); // here we grabbed the value of the textbox which corresponds to the name field and then we substituted its value with the placeholder in the query.
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Sign Up Successfull. Go To User Login.')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}