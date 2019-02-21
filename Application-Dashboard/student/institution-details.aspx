<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentDashboardMaster.Master" AutoEventWireup="true" CodeBehind="institution-details.aspx.cs" Inherits="Application_Dashboard.student.institution_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .spaceTop {
            margin-top: 35px;
        }

        .spaceBottom {
            margin-bottom: 25px;
        }

        .spaceImg {
            margin-top: 20px;
        }

        .headingFont {
            font-size: 25px;
            font-weight: 500;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #ffffff;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                    <h3>Institution Details</h3>
                </div>


            </div>

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">

                        <div class="x_content">
                            <h1>
                                <asp:Label ID="lblInsitutionName" runat="server"></asp:Label></h1>
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <asp:Image ID="imgSlider" runat="server" Style="height: 500px; width: 100%;" />
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <div id="map" style="width: 100%; height: 400px;"></div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Overview</h1>
                                    <hr />
                                    <asp:Label ID="lblOverview" runat="server" Text="Label"></asp:Label>
                                </div>
                            </div>
                            <div style="background-color:#f1f0ed;">
                                <div class="row spaceTop">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <h1 style="text-align: center;">Average tuition fees per year</h1>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                                <h2>Undergraduate</h2>
                                                <p class="headingFont">
                                                    US$
                                                <asp:Label ID="lblUndergraduateTuition" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                                <h2>Postgraduate</h2>
                                                <p class="headingFont">
                                                    US$
                                                <asp:Label ID="lblPostgraduateTuition" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <h1 style="text-align: center;">Costs per year</h1>
                                        <div class="row">
                                            <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                                <h2>Living costs</h2>
                                                <p class="headingFont">
                                                    US$
                                                <asp:Label ID="lblLivingCost" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                                <h2>Campus accommodation</h2>
                                                <p class="headingFont spaceBottom">
                                                    US$
                                                <asp:Label ID="lblAccomodationCost" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>What's New</h1>
                                    <hr />
                                    <asp:Label ID="lblWhatsNew" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgWhatsNew" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgTeachingQuality" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Teaching Quality</h1>
                                    <hr />
                                    <asp:Label ID="lblTeachingQuality" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Department Structure</h1>
                                    <hr />
                                    <asp:Label ID="lblDepatmentStructure" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgDepatmentStructure" runat="server"  Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgEntryRequirements" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Entry Requirements</h1>
                                    <hr />
                                    <asp:Label ID="lblEntryRequirements" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Facilities</h1>
                                    <hr />
                                    <asp:Label ID="lblFacilities" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgFacilities" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgScholorshipsFunding" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Scholarships & Funding</h1>
                                    <hr />
                                    <asp:Label ID="lblScholorshipsFunding" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>What do students say...</h1>
                                    <hr />
                                    <asp:Label ID="lblReview" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgReview" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <div style="background-color: #ffffff;">
                                <div class="row spaceTop">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <h1 style="text-align: center;">Popular Subjects</h1>
                                        <hr />
                                        <div class="row">
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Health & Medicine</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Business</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">MBA</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Engineering</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">
                                        <div class="row">
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Social Studies</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Creative Arts</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Computer Science</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                            <div class="col-md-3 col-sm-12 col-xs-12 spaceBottom">
                                                <h2 class="centered">Humanities</h2>
                                                <img src="../images/media.jpg" style="height: 150px; width: 100%;" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <center><div style="margin-top:20px;"><u><asp:LinkButton ID="linkBtnAllCourses" runat="server" >VIEW ALL COURSES</asp:LinkButton></u></div></center>
                            </div>
                            <div style="background-color: #f1f0ed;">
                                <div class="row spaceTop ">
                                    <div class="col-md-12 col-sm-12 col-xs-12" style="text-align: center;">
                                        <h1>Key facts</h1>
                                        <p class="headingFont">Hotcourses Diversity Index</p>
                                        <h2>Diversity Index</h2>
                                        <p class="headingFont">
                                            <asp:Label ID="lblDiversityIndex" runat="server"></asp:Label>
                                        </p>
                                        <h2 class="spaceBottom">International student nationalities at this university</h2>
                                    </div>
                                </div>

                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12 ">
                                    <h1>English Score Required</h1>
                                    <hr />
                                    <div class="row">
                                        <h2 style="text-align: center;">Minimum IELTS Score</h2>
                                        <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                            <p class="headingFont">
                                                <asp:Label ID="lblIeltsUndergraduate" runat="server"></asp:Label>
                                            </p>
                                            <h2>Undergraduate</h2>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                            <p class="headingFont">
                                                <asp:Label ID="lblIeltsPostgraduate" runat="server"></asp:Label>
                                            </p>
                                            <h2>Postgraduate</h2>
                                        </div>
                                    </div>
                                    <hr />
                                    <div class="row">
                                        <h2 style="text-align: center;">Minimum TOEFL IBT</h2>
                                        <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                            <p class="headingFont">
                                                <asp:Label ID="lblToeflUndergraduate" runat="server"></asp:Label>
                                            </p>
                                            <h2>Undergraduate</h2>
                                        </div>
                                        <div class="col-md-6 col-sm-12 col-xs-12" style="text-align: center;">
                                            <p class="headingFont">
                                                <asp:Label ID="lblToeflPostgraduate" runat="server"></asp:Label>
                                            </p>
                                            <h2>Postgraduate</h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                     <input id="hf_cdf"  runat="server" />
                                    <input id="latitude1"  runat="server" />

                                    <asp:Image ID="imgEnglishScore" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <input id="longitude" type="hidden" runat="server" />
    <script>

        // Initialize and add the map
function initMap() {
    // The location of Uluru
    document.getElementById('latitude1').value = document.getElementById('<%=hf_cdf.ClientID %>').value; 
  var uluru = {lat: document.getElementById('<%=hf_cdf.ClientID %>').value, lng: -73.19019};
  // The map, centered at Uluru
  var map = new google.maps.Map(
      document.getElementById('map'), {zoom: 15, center: uluru});
  // The marker, positioned at Uluru
  var marker = new google.maps.Marker({position: uluru, map: map});
}
    </script>
    <script async defer
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAl0Nm3tXlzXkNbcZwfo3V0e0-2L8ScMZM&callback=initMap">
    </script>



    <!-- /page content -->
</asp:Content>
