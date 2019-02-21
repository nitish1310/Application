using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_Dashboard.student
{
    public partial class institution_details : System.Web.UI.Page
    {
        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        string con = ConfigurationManager.ConnectionStrings["backendConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string latitude, longitude;
                using (SqlConnection connection = new SqlConnection(con))
                {
                    connection.Open();
                    SqlCommand cmd = new SqlCommand();
                    string query = "Select * from institutionDetails where insitutionId ='" + 1 + "'";
                    cmd = new SqlCommand(query, connection);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        lblInsitutionName.Text = dr["insitutionName"].ToString();
                        imgSlider.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["sliderImage"].ToString();
                        lblOverview.Text = dr["overview"].ToString();
                        lblUndergraduateTuition.Text = dr["undergraduateTuition"].ToString();
                        lblPostgraduateTuition.Text = dr["postGraduateTuition"].ToString();
                        lblLivingCost.Text = dr["livingCost"].ToString();
                        lblAccomodationCost.Text = dr["accomodationCost"].ToString();
                        lblWhatsNew.Text = dr["whatsNew"].ToString();
                        imgWhatsNew.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["whatsNewImg"].ToString();
                        imgTeachingQuality.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["teachingQualityImg"].ToString();
                        lblTeachingQuality.Text = dr["teachingQuality"].ToString();
                        lblDepatmentStructure.Text = dr["depatmentStructure"].ToString();
                        imgDepatmentStructure.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["depatmentStructureImg"].ToString();
                        imgEntryRequirements.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["entryRequirementsImg"].ToString();
                        lblEntryRequirements.Text = dr["entryRequirements"].ToString();
                        lblFacilities.Text = dr["facilities"].ToString();
                        imgFacilities.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["facilitiesImg"].ToString();
                        imgScholorshipsFunding.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["scholorshipsFundingImg"].ToString();
                        lblScholorshipsFunding.Text = dr["scholorshipsFunding"].ToString();
                        lblReview.Text = dr["review"].ToString();
                        imgReview.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["reviewImg"].ToString();
                        lblDiversityIndex.Text = dr["diversityIndex"].ToString();
                        lblIeltsUndergraduate.Text = dr["ieltsUndergraduate"].ToString();
                        lblIeltsPostgraduate.Text = dr["ieltsPostgraduate"].ToString();
                        lblToeflUndergraduate.Text = dr["toeflUndergraduate"].ToString();
                        lblToeflPostgraduate.Text = dr["toeflPostgraduate"].ToString();
                        imgEnglishScore.ImageUrl = "~/" + ConfigurationManager.AppSettings["docfoldername"] + dr["englishScoreImg"].ToString();
                        hf_cdf.Value = dr["latitude"].ToString();
                        longitude = dr["longitude"].ToString();
                        dr.Close();
                    }
                }

            }
            catch (Exception ex)
            {
                Log.Error(ex);
            }
        }
    }
}