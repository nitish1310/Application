<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Application_Dashboard.test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:TextBox ID="txtLocation" CssClass="form-control" runat="server" Text=""></asp:TextBox>
                <br />
                <asp:ScriptManager ID="ScriptManager1" runat="server" />
                <asp:UpdatePanel runat="server" ID="UpdatePanel" UpdateMode="Conditional">
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnSearch" EventName="Click" />
                    </Triggers>
                    <ContentTemplate>
                        <asp:Button ID="btnSearch" CssClass="btn btn-success btn-sm pull-left" runat="server" Text="Search" OnClick="FindCoordinates" />

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
                        <br />
                        <div class="row">
                            <div class="col-md-6">
                                <label style="text-align: right;" class=" control-label">
                                    Latitude:
                                </label>
                                <asp:TextBox ID="txtLatitude" CssClass="form-control" runat="server" Text=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <label style="text-align: right;" class=" control-label">
                                    Longitude:
                                </label>
                                <asp:TextBox ID="txtLongitude" CssClass="form-control" runat="server" Text=""></asp:TextBox>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                
                <div id="divErr" runat="server" class="" style="text-align: center; margin-top: 10px;">
                </div>
        </div>
    </form>
</body>
</html>
