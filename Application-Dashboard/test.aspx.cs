﻿using log4net;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application_Dashboard
{
    public partial class test : System.Web.UI.Page
    {
        private static readonly ILog Log = LogManager.GetLogger(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType);
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void FindCoordinates(object sender, EventArgs e)
        {
            string url = "https://maps.google.com/maps/api/geocode/xml?address=" + txtLocation.Text + "&sensor=false&key=AIzaSyAl0Nm3tXlzXkNbcZwfo3V0e0-2L8ScMZM";
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
                    }
                }
            }
            catch (Exception ex)
            {
                Log.Error("" + ex);
                divErr.Visible = true;
                divErr.Attributes["class"] = "alert alert-danger";
                divErr.InnerText = "Please enter valid address (without flat no.) or clicked multipe times";
            }
        }
    }
}