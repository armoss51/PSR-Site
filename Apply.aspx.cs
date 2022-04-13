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
    public partial class Subscribe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sdsDriverRegion_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btnApply_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["S22_ksarmossConnectionString"].ConnectionString;

            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spApply", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;

                InsertCmd.Parameters.AddWithValue("@AppName", ApplyName.Text);
                InsertCmd.Parameters.AddWithValue("@AppEmail", ApplyEmail.Text);
                InsertCmd.Parameters.AddWithValue("@AppIracingName", ApplyIracingName.Text);
                InsertCmd.Parameters.AddWithValue("@AppDiscord", ApplyDiscordName.Text);
                InsertCmd.Parameters.AddWithValue("@AppRegion", rblApplyRegion.SelectedValue);
                InsertCmd.Parameters.AddWithValue("@AppCar", rblApplyPrimaryCar.Text);

                SqlParameter AppIDOutput = new SqlParameter("@OutputAppID", SqlDbType.Int);
                AppIDOutput.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(AppIDOutput);

                try
                {
                    sqlConn.Open();
                    InsertCmd.ExecuteNonQuery();
                    Session["AppID"] = AppIDOutput.Value;

                    ApplyName.Text = "";
                    ApplyEmail.Text = "";
                    ApplyIracingName.Text = "";
                    ApplyDiscordName.Text = "";
                    rblApplyRegion.SelectedIndex = -1;
                    rblApplyPrimaryCar.SelectedIndex = -1;
                    lblAppMessage.Text = "Thank you for your application. We will review and get back to you as soon as we can.";
                }
                catch (Exception exc)
                {
                    lblAppMessage.Text = exc.Message;
                }
            }
        }
    }
}