<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMaster.Master" AutoEventWireup="true" CodeBehind="insitution-details-update.aspx.cs" Inherits="Application_Dashboard.admin.insitution_details_update" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajax" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .row-space {
            padding: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="title_left">
                </div>


            </div>

            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Update Institution Details</h2>
                            <ul class="nav navbar-right panel_toolbox">
                                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#">Settings 1</a>
                                        </li>
                                        <li><a href="#">Settings 2</a>
                                        </li>
                                    </ul>
                                </li>
                                <li><a class="close-link"><i class="fa fa-close"></i></a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <br />
                             <div id="div_msg" runat="server" class="" style="text-align: center; margin-top: 10px;"></div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Insitution Name:
                                       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtInsitutionName"
                            Display="Static" ErrorMessage="Please enter Insitution Name" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtInsitutionName" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Slider Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="imgSlider"
                            Display="Static" ErrorMessage="Please upload Slider Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgSlider" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Overview:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtOverview"
                            Display="Static" ErrorMessage="Please enter Overview" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtOverview" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-3 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Undergraduate Tuition Fees:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUndergraduateTuition"
                            Display="Static" ErrorMessage="Please enter Undergraduate Tuition Fees" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtUndergraduateTuition" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <span>PostGraduate Tuition Fees:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPostGraduateTuition"
                            Display="Static" ErrorMessage="Please enter PostGraduate Tuition Fees" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtPostGraduateTuition" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-3 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Living Cost:
                                       
                                            <asp:TextBox ID="txtLivingCost" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <span>Campus Accommodation Cost:
                                       
                                            <asp:TextBox ID="txtAccomodationCost" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>What's New:
                                       
                                            <asp:TextBox ID="txtWhatsNew" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>What's New Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="imgWhatsNew"
                            Display="Static" ErrorMessage="Please upload What's New Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgWhatsNew" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Teaching Quality Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="imgTeachingQuality"
                            Display="Static" ErrorMessage="Please upload Teaching Quality Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgTeachingQuality" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Teaching Quality:
                                       
                                            <asp:TextBox ID="txtTeachingQuality" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Depatment Structure:
                                       
                                            <asp:TextBox ID="txtDepatmentStructure" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Depatment Structure Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="imgDepatmentStructure"
                            Display="Static" ErrorMessage="Please upload Depatment Structure Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgDepatmentStructure" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Entry Requirements Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="imgEntryRequirements"
                            Display="Static" ErrorMessage="Please upload Entry Requirements Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgEntryRequirements" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Entry Requirements:
                                       
                                            <asp:TextBox ID="txtEntryRequirements" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>facilities:
                                       
                                            <asp:TextBox ID="txtFacilities" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Facilities Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtInsitutionName"
                            Display="Static" ErrorMessage="Please enter Insitution Name" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgFacilities" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Scholorships Funding Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="imgScholorshipsFunding"
                            Display="Static" ErrorMessage="Please upload Scholorships Funding Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgScholorshipsFunding" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Scholorships & Funding:
                                       
                                            <asp:TextBox ID="txtScholorshipsFunding" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Review:
                                       
                                            <asp:TextBox ID="txtReview" runat="server" placeholder="" class="form-control" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Review Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="imgReview"
                            Display="Static" ErrorMessage="Please upload Review Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgReview" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Diversity Index:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtInsitutionName"
                            Display="Static" ErrorMessage="Please enter Insitution Name" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtDiversityIndex" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-3 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>IELTS Undergraduate Score:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtIeltsUndergraduate"
                            Display="Static" ErrorMessage="Please enter IELTS Undergraduate Score" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtIeltsUndergraduate" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <span>IELTS Postgraduate Score:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtIeltsPostgraduate"
                            Display="Static" ErrorMessage="Please enter IELTS Postgraduate Score" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtIeltsPostgraduate" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-3 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>TOEFL Undergraduate Score:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtToeflUndergraduate"
                            Display="Static" ErrorMessage="Please enter TOEFL Undergraduate Score" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtToeflUndergraduate" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <span>TOEFL Postgraduate Score:
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtToeflPostgraduate"
                            Display="Static" ErrorMessage="Please enter TOEFL Postgraduate Score" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:TextBox ID="txtToeflPostgraduate" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-space">
                                <div class="col-md-6 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>English Score Image:
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="imgEnglishScore"
                            Display="Static" ErrorMessage="Please enter English Score Image" ValidationGroup="institutionDetails" InitialValue="" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            <asp:FileUpload ID="imgEnglishScore" runat="server" /></span>
                                    </div>
                                </div>
                            </div>
                             <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
                    </Triggers>
                    <ContentTemplate>
                             <div class="row row-space">
                                <div class="col-md-3 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                        <span>Institution Address:
                                        
                                            <asp:TextBox ID="txtInstitutionAddress" runat="server" placeholder="" class="form-control"></asp:TextBox></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="form-group" style="margin-top: 20px;">
                                        <asp:Button ID="btnSearch" CssClass="btn btn-success btn-sm pull-left" runat="server" Text="Search" OnClick="FindCoordinates" />
                                    </div>
                                </div>
                            </div>
                             <div class="row row-space">
                                <div class="col-md-3 col-sm-12 col-xs-12 col-md-offset-3">
                                    <div class="form-group">
                                       <span>Latitude:
                                         <asp:TextBox ID="txtLatitude" CssClass="form-control" runat="server" Text=""></asp:TextBox></span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-12 col-xs-12">
                                    <div class="form-group">
                                        <span>Longitude:
                                         <asp:TextBox ID="txtLongitude" CssClass="form-control" runat="server" Text=""></asp:TextBox></span>
                                    </div>
                                </div>
                            </div>
                        </ContentTemplate>
                </asp:UpdatePanel>
                            <div class="row" style="margin-top: 20px">
                                <div class=" col-sm-offset-3 col-sm-2">
                                    <asp:Button ID="btn_save" class="btn btn-primary btn-block" runat="server" Text="Create"
                                        OnClick="btn_save_Click" ValidationGroup="institutionDetails" />
                                </div>
                                <div class=" col-sm-2">
                                    <asp:Button ID="btn_update" class="btn btn-primary btn-block" runat="server" Text="update"
                                        OnClick="btn_update_Click" ValidationGroup="a" />
                                </div>
                                <div class=" col-sm-2">
                                    <asp:Button ID="btn_clear" class="btn btn-primary btn-block" runat="server" Text="clear"
                                        OnClick="btn_clear_Click" />
                                </div>
                            </div>
                            <br />
                        <br />
                        <asp:GridView ID="GridView1" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White"
                            runat="server" AutoGenerateColumns="false" Visible="false">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="Id" />
                                <asp:BoundField DataField="Address" HeaderText="Address" />
                                <asp:BoundField DataField="Latitude" HeaderText="Latitude" />
                                <asp:BoundField DataField="Longitude" HeaderText="Longitude" />
                            </Columns>
                        </asp:GridView>
                           <%-- <asp:ValidationSummary ID="ValidationSummary2" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" meta:resourcekey="ValidationSummary1Resource1" ValidationGroup="institutionDetails" DisplayMode="List" />--%>
                             <div align="center" style="margin-top:20px;">
                    <asp:GridView ID="grid_exe" runat="server" AutoGenerateColumns="False" DataKeyNames="id"
                        OnSelectedIndexChanged="grid_exe_SelectedIndexChanged" Width="80%" CssClass="table table-responsive"
                        OnPageIndexChanging="grid_exe_PageIndexChanging" CellPadding="4" ForeColor="#333333"
                        AllowPaging="True" GridLines="None" PageSize="5">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" HeaderText="Select Here" />
                            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                                SortExpression="id" Visible="False" />
                            <asp:BoundField DataField="exeName" HeaderText="Executive Name" SortExpression="exeName" />
                            <asp:BoundField DataField="exeEmail" HeaderText="Email ID" SortExpression="exeEmail" />
                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" HorizontalAlign="Center" CssClass="pagination-ys" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:HiddenField ID="hf_id" runat="server" />
                     <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidationGroup="institutionDetails" DisplayMode="List"/>
                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /page content -->
</asp:Content>
