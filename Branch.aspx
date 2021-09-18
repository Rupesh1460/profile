<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Branch.aspx.cs" Inherits="RbS.Branch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Branch
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link href="Styles/StyleSheet1.css" rel="stylesheet" />
    <script>
        function show() {
            $("#btn").click();
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contents" runat="server">
    <div class="row col-lg-12 mb-4">
        <div class="col-lg-6 mb-4" runat="server" id="initials">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary text-center">Branch List
                    <button type="button" class="btn close" runat="server" id="Addbranch" onserverclick="Addbranch_ServerClick">
                        <i class="fas fa-plus fa-xs"></i>
                    </button>
                    </h6>
                </div>
                <div class="card-body">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" GridLines="None">
                        <RowStyle BackColor="#84FFFF" ForeColor="Black" />
                        <AlternatingRowStyle BackColor="#E0F7FA" ForeColor="Black" />
                        <HeaderStyle BackColor="#2962FF" Font-Bold="true" ForeColor="White" />
                        <SelectedRowStyle BackColor="#00E676" ForeColor="White" />
                        <FooterStyle BackColor="#3498DB" Font-Bold="true" ForeColor="White" />
                        <PagerStyle BackColor="#7F8C8D" ForeColor="#333333" HorizontalAlign="Center" />
                        <Columns>
                            <asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-Width="50px" />
                            <asp:BoundField HeaderText="Name" DataField="Name" HeaderStyle-Width="300px" />
                            <asp:BoundField HeaderText="Address" DataField="Address" HeaderStyle-Width="300px" />
                            <asp:BoundField HeaderText="Contact" DataField="Phone" HeaderStyle-Width="100px" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
        <div class="col-lg-6 mb-4" runat="server">
            <div class="card shadow mb-4">
                <div class="card-body">
                    Name:<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    
                </div>
            </div>
        </div>
    </div>


    <button type="button" id="btn" class="btn btn-primary" data-toggle="modal" data-target="#branchaddModal" style="display: none">
    </button>
    <div class="modal fade" id="branchaddModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Branch Details</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <asp:Label runat="server" CssClass="english" Text="Name"></asp:Label><br />
                    <asp:TextBox ID="Name" CssClass="boxenglish" Width="100%" runat="server"></asp:TextBox><br />
                    <asp:Label runat="server" CssClass="english" Text="Address"></asp:Label><br />
                    <asp:TextBox ID="Address" CssClass="boxenglish" Width="100%" runat="server"></asp:TextBox><br />
                    <asp:Label runat="server" CssClass="english" Text="Phone No."></asp:Label><br />
                    <asp:TextBox ID="Phone" CssClass="boxenglish" Width="100%" runat="server"></asp:TextBox><br />
                </div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <asp:Button ID="Save" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="Save_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
