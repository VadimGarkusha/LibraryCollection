<%@ Page Title="Books" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Default2" %>
<%--VADYM HARKUSHA 300909484--%>
<%@ MasterType VirtualPath="~/MyMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <h3 class="title-h3">Books</h3>
    <%--<asp:Literal ID="listBooks" runat="server"></asp:Literal>--%>


    <asp:GridView runat="server" AutoGenerateColumns="False" DataSourceID="booksDataSource" OnRowCommand="Unnamed1_RowCommand" CssClass="table table-striped books">
        <Columns>
            <asp:TemplateField HeaderText="Title">
                <ItemTemplate>
                    <asp:LinkButton ID="viewBook" runat="server" CommandName="view" Text='<%# Eval("BookTitle") %>' CommandArgument='<%# Bind("BooksID") %>'></asp:LinkButton>
                </ItemTemplate><%--VADYM HARKUSHA 300909484--%>
            </asp:TemplateField>
            <asp:BoundField DataField="BookAuthor" HeaderText="Author" />
            <asp:BoundField DataField="Isbn" HeaderText="ISBN" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="booksDataSource" runat="server" ConnectionString="Data Source=(localdb)\ProjectsV13;Initial Catalog=LibraryCollection;Integrated Security=True" SelectCommand="SELECT [BookTitle], [BooksID], [BookAuthor], [Isbn] FROM [Books]" ProviderName="System.Data.SqlClient"></asp:SqlDataSource>
<%--VADYM HARKUSHA 300909484--%>
</asp:Content>

