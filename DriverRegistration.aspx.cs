using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PSR_Site
{
    public partial class DriverRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //Create string var that has login creds for DB
            string strConn = ConfigurationManager.ConnectionStrings["S22_ksarmossConnectionString"].ConnectionString;

            //Create instance of sqlConnection class
            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spDriverRegistration", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;

                InsertCmd.Parameters.AddWithValue("@MemberName", RegisterName.Text);
                InsertCmd.Parameters.AddWithValue("@MemberEmail", RegisterEmail.Text);
                InsertCmd.Parameters.AddWithValue("@MemberPassword", RegisterPassword1.Text);
                InsertCmd.Parameters.AddWithValue("@MemberRegion", rblRegisterRegion.SelectedValue);
                InsertCmd.Parameters.AddWithValue("@MemberCar", rblRegisterPrimaryCar.SelectedValue);

                SqlParameter MemberIDOutput = new SqlParameter("@OutputMemberID", SqlDbType.Int);
                MemberIDOutput.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(MemberIDOutput);

                try
                {
                    sqlConn.Open();
                    InsertCmd.ExecuteNonQuery();
                    Session["MemberID"] = MemberIDOutput.Value;

                    RegisterName.Text = "";
                    RegisterEmail.Text = "";
                    RegisterPassword1.Text = "";
                    RegisterPassword2.Text = "";
                    rblRegisterRegion.SelectedIndex = -1;
                    rblRegisterPrimaryCar.SelectedIndex = -1;
                    lblRegMessage.Text = "";

                    Response.Redirect("~/Login.aspx");

                }
                catch (Exception exc)
                {
                    lblRegMessage.Text = exc.Message;
                }
            }
        }

        protected void btnRegClear_Click(object sender, EventArgs e)
        {
            RegisterName.Text = "";
            RegisterEmail.Text = "";
            RegisterPassword1.Text = "";
            RegisterPassword2.Text = "";
            rblRegisterRegion.SelectedIndex = -1;
            rblRegisterPrimaryCar.SelectedIndex = -1;
            lblRegMessage.Text = "";
        }
    }
}