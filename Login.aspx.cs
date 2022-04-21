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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["S22_ksarmossConnectionString"].ConnectionString;

            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                //Use SQLDataAdapter to run select SP, validate user creds, return record into data set.
                SqlDataAdapter sqldaValidateUser = new SqlDataAdapter("spValidateUser", sqlConn);
                sqldaValidateUser.SelectCommand.CommandType = CommandType.StoredProcedure;

                sqldaValidateUser.SelectCommand.Parameters.AddWithValue("@MemberEmail", LoginEmail.Text);
                sqldaValidateUser.SelectCommand.Parameters.AddWithValue("@MemberPassword", LoginPassword.Text);

                try
                {
                    DataSet dsUserRecord = new DataSet();
                    sqldaValidateUser.Fill(dsUserRecord);

                    //Check if we have a row in dataset
                    if (dsUserRecord.Tables[0].Rows.Count == 0)
                    {
                        //Login failed
                        lblLoginMessage.Text = "Invalid login, try again.";
                    }
                    else
                    {
                        //We found match, move values from DS to user class, then save into session var
                        UserRecord currentUser = new UserRecord();
                        currentUser.MemberID = Convert.ToInt32(dsUserRecord.Tables[0].Rows[0]["MemberID"].ToString());
                        currentUser.MemberName = dsUserRecord.Tables[0].Rows[0]["MemberName"].ToString();
                        currentUser.MemberEmail = dsUserRecord.Tables[0].Rows[0]["MemberEmail"].ToString();
                        currentUser.MemberRegion = Convert.ToInt32(dsUserRecord.Tables[0].Rows[0]["MemberRegion"].ToString());
                        currentUser.MemberCar = Convert.ToInt32(dsUserRecord.Tables[0].Rows[0]["MemberCar"].ToString());
                        currentUser.MemberSecID = Convert.ToInt32(dsUserRecord.Tables[0].Rows[0]["MemberSecID"].ToString());

                        Session["UserRecord"] = currentUser;

                        //Clear form
                        LoginEmail.Text = "";
                        LoginPassword.Text = "";

                        Response.Redirect("~/Home.aspx");

                    }
                }
                catch (Exception exc)
                {
                    lblLoginMessage.Text = exc.Message;
                }
            }
        }

        protected void btnLoginClear_Click(object sender, EventArgs e)
        {

            //Clear all fields
            LoginEmail.Text = "";
            LoginPassword.Text = "";
            cbRememberMe.Checked = false;
        }
    }
}