<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentDashboardMaster.Master" AutoEventWireup="true" CodeBehind="course-details.aspx.cs" Inherits="Application_Dashboard.student.course_details" %>
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
                    <h3>Course Details</h3>
                </div>


            </div>

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">

                        <div class="x_content">
                            <h1>
                                <asp:Label ID="lblCourseName" runat="server">M.S. in Mechanical Engineering</asp:Label></h1>
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
                                    <h1>About</h1>
                                    <hr />
                                    <asp:Label ID="lblOverview" runat="server" Text="Label">The Master of Science in Mechanical Engineering degree program prepares the student for a successful professional career through advanced study in design, development, analysis, manufacturing, and maintenance of mechanical systems for a wide range of industries, including transportation, automation, medical, energy generation, electronic, sports and aerospace.
The program combines core mechanical engineering courses with technical electives that enable the student to increase his/her knowledge and competence in essential skills for Mechanical Engineering while affording sufficient freedom to provide in-depth study in both traditional and contemporary curriculum tracks and explore emerging interdisciplinary areas.
The technical areas supported by the department include General Mechanical Engineering, Design Engineering, Manufacturing Engineering and Management, Mechanics and Materials, Thermal Fluid Systems and Sustainable Energy, Biomechanical Engineering, Mechatronics and Automation, and Sports and Aeronautical Engineering.  The student is required to design an individualized program of study with the help and approval of his/her faculty advisor to meet his/her academic and career goals.
Customized study plans also allow receiving the Mechanical Engineering M.S. degree while pursuing another M.S. degree in Computer Science, Computer Engineering, Electrical Engineering, Technology Management, and MBA.  Two degree students in these two programs should consult their respective advisors to work on their individualized plans.
The department is the home of the CNC Mini Milling Machine Laboratory, Computer Aided Engineering and Rapid Prototyping Laboratory, the Applied Computational Fluid Dynamics Laboratory, and the Electronics Thermal Management Laboratory. Students can also access the other laboratories in the School of Engineering. Some classes are taught by adjunct faculty from local industries and faculty from other engineering departments at UB.

</asp:Label>
                                </div>
                            </div>
                           <%-- <div style="background-color:#f1f0ed;">
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
                            </div>--%>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Program Prerequisites</h1>
                                    <hr />
                                    <asp:Label ID="lblWhatsNew" runat="server" Text="Label">•	Bachelor’s degree in engineering or a related STEM field from an accredited university or recognized international institution
•	Recommended cumulative undergraduate GPA of 2.90 or higher

REQUIRED MATERIALS
•	Application and application fee (non-refundable)
•	Official transcripts from all schools attended
•	Two letters of recommendation
o	Letters must come directly from employers, professors, or professional associates. Your recommenders should comment on your work ethic, academic or professional experience in your field of choice, and how you would positively contribute to the School of Engineering.
•	Personal statement
o	In 250 – 500 words, detail why you are seeking this degree, how you expect to apply your degree to your professional career after graduation and why you seek to pursue your degree through the University of Bridgeport.
•	Résumé
</asp:Label>
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
                                    <h1>Deadlines</h1>
                                    <hr />
                                    <asp:Label ID="lblTeachingQuality" runat="server">Completed application and all supporting documents must be received by:
•	May 1 for the Fall semester
•	November 15 for the Spring semester
A minimum of 30 semester hours is required for the MSME degree. The program combines core mechanical engineering courses with technical electives.  The student is recommended to choose 3 electives for in-depth study in one technical area and the other electives for exploration in a broader technical area.
</asp:Label>
                                </div>
                            </div>
                            
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgEntryRequirements" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Study Option</h1>
                                    <hr />
                                    <asp:Label ID="lblEntryRequirements" runat="server">Completed application and all supporting documents must be received by:
•	May 1 for the Fall semester
•	November 15 for the Spring semester
A minimum of 30 semester hours is required for the MSME degree. The program combines core mechanical engineering courses with technical electives.  The student is recommended to choose 3 electives for in-depth study in one technical area and the other electives for exploration in a broader technical area.
</asp:Label>
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Steam and OPT</h1>
                                    <hr />
                                    <asp:Label ID="lblFacilities" runat="server" Text="Label">The M.S. degrees offered by the School of Engineering at the University of Bridgeport are classified by ICE (U.S. Immigration and Customs Enforcement) as STEM (Science, Technology, Engineering and Math) degrees. Therefore, all International Students who earn an M.S. degree are eligible for twelve (12) months of OPT (Optional Practical Training) and at the end of the twelve months of OPT, the student and the company the student works for, can apply for an extension of seventeen (17) additional months of work, as long as the company is an E-verify company. In summary, a graduate with an M.S. degree can work under OPT in the U.S.A. for a total of twenty-nine (29) months. For more information visit the International Center for Students and Scholars.

</asp:Label>
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
                                    <h1>Financial Stipends and Scholarships</h1>
                                    <hr />
                                    <asp:Label ID="lblScholorshipsFunding" runat="server">The following Financial Stipends and Scholarships are available for qualified student applicants. For more information, please refer to Tuition and Financial Aid.
(A) Graduate Scholarship Program
The University of Bridgeport launched a new graduate scholarship program to help deserving students meet the financial obligations of pursuing higher education. For more information, please refer to Graduate Scholarship Program.
(B) Graduate Assistantships, Research Assistantships and Student Workers employment
Graduate Assistantships, Research Assistantships and Student Workers employment are also available for qualified students. For more information, please refer to On Campus Jobs.
</asp:Label>
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Course Overview</h1>
                                    <hr />
                                    <asp:Label ID="lblReview" runat="server" Text="Label">•	3 courses (9 credit hours) from the Mechanical Engineering core courses
•	3 courses (9 credit hours) from one technical area
•	MEEG 597 Masters project (3 credit hours) or MEEG 598 Masters thesis (6 credit hours)
•	2-3 elective courses (6-9 credit hours)
MECHANICAL ENGINEERING CORE COURSES
The core courses help the student to increase his/her knowledge and competence in skills essential to the mechanical engineering field.
•	MEEG 410 Advanced Fluid Dynamics
•	MEEG 463 Advanced Heat Transfer
•	MEEG 452 Advanced Vibrations
•	MEEG 454 Advanced Dynamics
•	MEEG 453 Finite Element Method
</asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="imgReview" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Learning Outcome</h1>
                                    <hr />
                                    <asp:Label ID="Label1" runat="server" Text="Label">Students in the M.S. Mechanical Engineering Program will be able to:
1.	demonstrate the ability to design or analyze a system, component or process to meet desired needs within realistic, contemporary constraints such as health and safety, ethics, performance, sustainability and economics
2.	develop specialized advanced skills in mechanical engineering fields including fluid mechanics, heat transfer, material science, dynamics, vibrations, numerical methods, design and manufacturing
3.	demonstrate the ability to use techniques, skills and modern engineering tools necessary for engineering practice
4.	demonstrate the ability to create, adapt, transfer and integrate existing and emerging technologies into new products, processes and services
5.	develop decision making, risk assessment and problem solving skills considering both economic and other constraints
6.	develop both technical and management oral presentation and written communication skills
</asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="Image1" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <div class="row spaceTop">
                                <div class="col-md-6 col-sm-12 col-xs-12">
                                    <h1>Professor List</h1>
                                    <hr />
                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                </div>
                                <div class="col-md-6 col-sm-12 col-xs-12 spaceImg">
                                    <asp:Image ID="Image2" runat="server" Style="height: 400px; width: 100%;" />
                                </div>
                            </div>
                            <%--<div style="background-color: #ffffff;">
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
                            </div>--%>
                           <%-- <div style="background-color: #f1f0ed;">
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

                            </div>--%>
                            <%--<div class="row spaceTop">
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
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
