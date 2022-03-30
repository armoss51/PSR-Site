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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddRegion_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["S22_ksarmossConnectionString"].ConnectionString;

            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spInsertRegion", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;

                InsertCmd.Parameters.AddWithValue("@RegionName", adminRegionName.Text);

                SqlParameter RegionIDOutput = new SqlParameter("@OutputRegionID", SqlDbType.Int);
                RegionIDOutput.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(RegionIDOutput);

                try
                {
                    sqlConn.Open();
                    InsertCmd.ExecuteNonQuery();
                    Session["RegionID"] = RegionIDOutput.Value;
                    lblRegionMessage.Text = "Region successfully added.";
                    adminRegionName.Text = "";
                }
                catch (Exception exc)
                {
                    lblRegionMessage.Text = exc.Message;
                }
            }
        }

        protected void btnAddCar_Click(object sender, EventArgs e)
        {
            string strConn = ConfigurationManager.ConnectionStrings["S22_ksarmossConnectionString"].ConnectionString;

            using (SqlConnection sqlConn = new SqlConnection(strConn))
            {
                SqlCommand InsertCmd = new SqlCommand("spInsertCar", sqlConn);
                InsertCmd.CommandType = CommandType.StoredProcedure;

                InsertCmd.Parameters.AddWithValue("@CarName", addCar.Text);

                SqlParameter CarIDOutput = new SqlParameter("@OutputCarID", SqlDbType.Int);
                CarIDOutput.Direction = ParameterDirection.Output;
                InsertCmd.Parameters.Add(CarIDOutput);

                try
                {
                    sqlConn.Open();
                    InsertCmd.ExecuteNonQuery();
                    Session["CarID"] = CarIDOutput.Value;
                    lblCarMessage.Text = "Car successfully added.";
                    addCar.Text = "";
                }
                catch (Exception exc)
                {
                    lblRegionMessage.Text = exc.Message;
                }
            }

        }
    }
}