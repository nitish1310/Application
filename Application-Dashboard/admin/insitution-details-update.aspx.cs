using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_Dashboard.admin
{
    public partial class insitution_details_update : System.Web.UI.Page
    {
        private static readonly log4net.ILog Log = log4net.LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        string constr = ConfigurationManager.ConnectionStrings["backendConnectionString"].ConnectionString.ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                clear_data();
                FillGrid();
            }
        }

        //This funcation will fill data in grid View 
        void FillGrid()
        {

        }
        //clear all fields 
        void clear_data()
        {
            btn_save.Enabled = true;
            btn_update.Enabled = false;
            btn_update.Attributes["class"] = "btn btn-primary btn-block";
        }


        protected void btn_save_Click(object sender, EventArgs e)
        {
            try
            {
                string imgSliderFilename = "";
                string imgWhatsNewFilename = "";
                string imgTeachingQualityFilename = "";
                string imgDepatmentStructureFilename = "";
                string imgEntryRequirementsFilename = "";
                string imgFacilitiesFilename = "";
                string imgScholorshipsFundingFilename = "";
                string imgReviewFilename = "";
                string imgEnglishScoreFilename = "";
                if (imgSlider.HasFile && imgWhatsNew.HasFile)
                {
                    string imgSliderFilePath = "";
                    string imgWhatsNewFilePath = "";
                    string imgTeachingQualityFilePath = "";
                    string imgDepatmentStructureFilePath = "";
                    string imgEntryRequirementsFilePath = "";
                    string imgFacilitiesFilePath = "";
                    string imgScholorshipsFundingFilePath = "";
                    string imgReviewFilePath = "";
                    string imgEnglishScoreFilePath = "";

                    imgSliderFilename =  txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgSlider.PostedFile.FileName);
                    imgSliderFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgSliderFilename));
                    imgWhatsNewFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgWhatsNew.PostedFile.FileName);
                    imgWhatsNewFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgWhatsNewFilename));
                    imgTeachingQualityFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgTeachingQuality.PostedFile.FileName);
                    imgTeachingQualityFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgTeachingQualityFilename));
                    imgDepatmentStructureFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgDepatmentStructure.PostedFile.FileName);
                    imgDepatmentStructureFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgDepatmentStructureFilename));
                    imgEntryRequirementsFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgEntryRequirements.PostedFile.FileName);
                    imgEntryRequirementsFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgEntryRequirementsFilename));
                    imgFacilitiesFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgFacilities.PostedFile.FileName);
                    imgFacilitiesFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgFacilitiesFilename));
                    imgScholorshipsFundingFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgScholorshipsFunding.PostedFile.FileName);
                    imgScholorshipsFundingFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgScholorshipsFundingFilename));
                    imgReviewFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgReview.PostedFile.FileName);
                    imgReviewFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgReviewFilename));
                    imgEnglishScoreFilename = txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + Path.GetFileName(imgEnglishScore.PostedFile.FileName);
                    imgEnglishScoreFilePath = Path.Combine(Server.MapPath("~/" + ConfigurationManager.AppSettings["docfoldername"] + txtInsitutionName.Text.Trim().Replace(" ", "-") + "-" + imgEnglishScoreFilename));
                    if (File.Exists(imgSliderFilePath))
                    {
                        div_msg.Visible = true;
                        div_msg.Attributes["class"] = "alert alert-danger";
                        div_msg.InnerText = "Preview file is already exist";
                    }
                    else
                    {

                        {
                            using (SqlConnection connection = new SqlConnection(constr))
                            {
                                if (txtInsitutionName.Text != null)
                                {
                                    imgSlider.SaveAs(imgSliderFilePath);
                                    imgWhatsNew.SaveAs(imgWhatsNewFilePath);
                                    imgTeachingQuality.SaveAs(imgTeachingQualityFilePath);
                                    imgDepatmentStructure.SaveAs(imgDepatmentStructureFilePath);
                                    imgEntryRequirements.SaveAs(imgEntryRequirementsFilePath);
                                    imgFacilities.SaveAs(imgFacilitiesFilePath);
                                    imgScholorshipsFunding.SaveAs(imgScholorshipsFundingFilePath);
                                    imgReview.SaveAs(imgReviewFilePath);
                                    imgEnglishScore.SaveAs(imgEnglishScoreFilePath);
                                    //Insert a new Executive data 
                                    string strcmd = "insert into institutionDetails (insitutionId, insitutionName,sliderImage,overview ,undergraduateTuition ,postGraduateTuition,livingCost , " +
                                        "accomodationCost ,whatsNew ,whatsNewImg,teachingQualityImg ,teachingQuality ,depatmentStructure ,depatmentStructureImg ,entryRequirementsImg ,entryRequirements , " +
                                        "facilities ,facilitiesImg ,scholorshipsFundingImg ,scholorshipsFunding ,review  ,reviewImg ,diversityIndex ,ieltsUndergraduate ,ieltsPostgraduate , " +
                                        "toeflUndergraduate,toeflPostgraduate, englishScoreImg) values (@InsitutionId, @InsitutionName, @SliderImage, @Overview , @UndergraduateTuition , " +
                                        "@PostGraduateTuition, @LivingCost , @AccomodationCost , @WhatsNew , @WhatsNewImg, @TeachingQualityImg , @TeachingQuality , @DepatmentStructure , " +
                                        "@DepatmentStructureImg , @EntryRequirementsImg , @EntryRequirements , @Facilities , @FacilitiesImg , @ScholorshipsFundingImg , @ScholorshipsFunding , @Review , " +
                                        "@ReviewImg , @DiversityIndex , @IeltsUndergraduate , @IeltsPostgraduate , @ToeflUndergraduate, @ToeflPostgraduate, @EnglishScoreImg)";
                                    SqlCommand cmd = new SqlCommand(strcmd, connection);
                                    cmd.Parameters.AddWithValue("@InsitutionId", 5);
                                    cmd.Parameters.AddWithValue("@InsitutionName", txtInsitutionName.Text);
                                    cmd.Parameters.AddWithValue("@SliderImage", "" + imgSliderFilename);
                                    cmd.Parameters.AddWithValue("@Overview", txtOverview.Text);
                                    cmd.Parameters.AddWithValue("@UndergraduateTuition", txtUndergraduateTuition.Text);
                                    cmd.Parameters.AddWithValue("@PostGraduateTuition", txtPostGraduateTuition.Text);
                                    cmd.Parameters.AddWithValue("@LivingCost", txtLivingCost.Text);
                                    cmd.Parameters.AddWithValue("@AccomodationCost", txtAccomodationCost.Text);
                                    cmd.Parameters.AddWithValue("@WhatsNew", txtWhatsNew.Text);
                                    cmd.Parameters.AddWithValue("@WhatsNewImg", "" + imgWhatsNewFilename);
                                    cmd.Parameters.AddWithValue("@TeachingQualityImg", imgTeachingQualityFilename);
                                    cmd.Parameters.AddWithValue("@TeachingQuality", txtTeachingQuality.Text);
                                    cmd.Parameters.AddWithValue("@DepatmentStructure", txtDepatmentStructure.Text);
                                    cmd.Parameters.AddWithValue("@DepatmentStructureImg", "" + imgDepatmentStructureFilename);
                                    cmd.Parameters.AddWithValue("@EntryRequirementsImg", "" + imgEntryRequirementsFilename);
                                    cmd.Parameters.AddWithValue("@EntryRequirements", txtEntryRequirements.Text);
                                    cmd.Parameters.AddWithValue("@Facilities", txtFacilities.Text);
                                    cmd.Parameters.AddWithValue("@FacilitiesImg", "" + imgFacilitiesFilename);
                                    cmd.Parameters.AddWithValue("@ScholorshipsFundingImg", "" + imgScholorshipsFundingFilename);
                                    cmd.Parameters.AddWithValue("@ScholorshipsFunding", txtScholorshipsFunding.Text);
                                    cmd.Parameters.AddWithValue("@Review", txtReview.Text);
                                    cmd.Parameters.AddWithValue("@ReviewImg", "" + imgReviewFilename);
                                    cmd.Parameters.AddWithValue("@DiversityIndex", txtDiversityIndex.Text);
                                    cmd.Parameters.AddWithValue("@IeltsUndergraduate", txtIeltsUndergraduate.Text);
                                    cmd.Parameters.AddWithValue("@IeltsPostgraduate", txtIeltsPostgraduate.Text);
                                    cmd.Parameters.AddWithValue("@ToeflUndergraduate", txtToeflUndergraduate.Text);
                                    cmd.Parameters.AddWithValue("@ToeflPostgraduate", txtToeflPostgraduate.Text);
                                    cmd.Parameters.AddWithValue("@EnglishScoreImg", "" + imgEnglishScoreFilename);
                                    connection.Open();
                                    if (cmd.ExecuteNonQuery() > 0)
                                    {
                                        clear_data();
                                        FillGrid();

                                        div_msg.Visible = true;
                                        div_msg.Attributes["class"] = "alert alert-success";
                                        div_msg.InnerHtml = "Institution created successfully";
                                    }

                                }
                                else
                                {
                                    div_msg.Visible = true;
                                    div_msg.Attributes["class"] = "alert alert-danger";
                                    div_msg.InnerHtml = "Institution Name in mandatory";
                                }
                            }
                        }
                    }
                }
                else
                {
                    div_msg.Visible = true;
                    div_msg.Attributes["class"] = "alert alert-danger";
                    div_msg.InnerText = "Please select file";
                }
            }
            catch (Exception ex)
            {
                Log.Error("" + ex);
                div_msg.Visible = true;
                div_msg.Attributes["class"] = "alert alert-danger";
                div_msg.InnerHtml = "Something went wrong. Please try again......";
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {

        }

        protected void btn_clear_Click(object sender, EventArgs e)
        {

        }
        protected void grid_exe_SelectedIndexChanged(object sender, EventArgs e)
        {
            btn_save.Enabled = false;
            btn_update.Enabled = true;
        }
        protected void grid_exe_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void FindCoordinates(object sender, EventArgs e)
        {
            string url = "https://maps.google.com/maps/api/geocode/xml?address=" + txtInstitutionAddress.Text + "&sensor=false&key=AIzaSyAl0Nm3tXlzXkNbcZwfo3V0e0-2L8ScMZM";
            WebRequest request = WebRequest.Create(url);
            try
            {
                using (WebResponse response = (HttpWebResponse)request.GetResponse())
                {
                    using (StreamReader reader = new StreamReader(response.GetResponseStream(), Encoding.UTF8))
                    {
                        DataSet dsResult = new DataSet();
                        dsResult.ReadXml(reader);
                        DataTable dtCoordinates = new DataTable();
                        dtCoordinates.Columns.AddRange(new DataColumn[4] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Address", typeof(string)),
                        new DataColumn("Latitude",typeof(string)),
                        new DataColumn("Longitude",typeof(string)) });
                        foreach (DataRow row in dsResult.Tables["result"].Rows)
                        {
                            string geometry_id = dsResult.Tables["geometry"].Select("result_id = " + row["result_id"].ToString())[0]["geometry_id"].ToString();
                            DataRow location = dsResult.Tables["location"].Select("geometry_id = " + geometry_id)[0];
                            dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"], location["lat"], location["lng"]);
                        }
                        GridView1.DataSource = dtCoordinates;
                        GridView1.DataBind();
                        int id = Convert.ToInt32(GridView1.Rows[0].Cells[0].Text);
                        string latitude = GridView1.Rows[0].Cells[2].Text.ToString();
                        string longitude = GridView1.Rows[0].Cells[3].Text.ToString();

                        txtLatitude.Text = latitude;
                        txtLongitude.Text = longitude;


                        btnSearch.Visible = false;


                        btnSearch.Visible = false;
                    }
                }
            }
            catch (Exception ex)
            {
                Log.Error("" + ex);
                div_msg.Visible = true;
                div_msg.Attributes["class"] = "alert alert-danger";
                div_msg.InnerText = "Please enter valid address (without flat no.) or clicked multipe times";
            }
        }
    }
}