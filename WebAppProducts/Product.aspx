<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebAppProducts.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="w-100">
        <tr>
            <td><h2 class="text-center" id="gvProducts">Products</h2></td>
            
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="PId" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="PCategory" HeaderText="PCategory" SortExpression="PCategory" />
                        <asp:BoundField DataField="Pprice" HeaderText="Pprice" SortExpression="Pprice" />
                        <asp:BoundField DataField="Pname" HeaderText="Pname" SortExpression="Pname" />
                        <asp:BoundField DataField="PId" HeaderText="PId" ReadOnly="True" SortExpression="PId" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ProductsDbConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [PId] = @original_PId AND [PCategory] = @original_PCategory AND [Pprice] = @original_Pprice AND [Pname] = @original_Pname" InsertCommand="INSERT INTO [Product] ([PCategory], [Pprice], [Pname], [PId]) VALUES (@PCategory, @Pprice, @Pname, @PId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ProductsDbConnectionString.ProviderName %>" SelectCommand="SELECT [PCategory], [Pprice], [Pname], [PId] FROM [Product]" UpdateCommand="UPDATE [Product] SET [PCategory] = @PCategory, [Pprice] = @Pprice, [Pname] = @Pname WHERE [PId] = @original_PId AND [PCategory] = @original_PCategory AND [Pprice] = @original_Pprice AND [Pname] = @original_Pname">
                    <DeleteParameters>
                        <asp:Parameter Name="original_PId" Type="Int32" />
                        <asp:Parameter Name="original_PCategory" Type="String" />
                        <asp:Parameter Name="original_Pprice" Type="Double" />
                        <asp:Parameter Name="original_Pname" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="PCategory" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Double" />
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="PId" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="PCategory" Type="String" />
                        <asp:Parameter Name="Pprice" Type="Double" />
                        <asp:Parameter Name="Pname" Type="String" />
                        <asp:Parameter Name="original_PId" Type="Int32" />
                        <asp:Parameter Name="original_PCategory" Type="String" />
                        <asp:Parameter Name="original_Pprice" Type="Double" />
                        <asp:Parameter Name="original_Pname" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>
