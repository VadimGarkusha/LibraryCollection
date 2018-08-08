<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="BookDetailsPage.aspx.cs" Inherits="BookDetailsPage" %>
<%--VADYM HARKUSHA 300909484--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <h3 class="title-h3">Book Details</h3>

    <asp:DetailsView ID="books" runat="server" AutoGenerateColumns="False" DataSourceID="booksDataSource" CssClass="table table-striped books" AutoGenerateRows="False" OnItemDeleted="GridView1_ItemDeleted" DataKeyNames="BooksID" OnItemUpdated="GridView1_ItemUpdated">
        <Fields>

            <asp:BoundField DataField="BooksID" HeaderText="BooksID" SortExpression="BooksID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
            <asp:BoundField DataField="Isbn" HeaderText="Isbn" SortExpression="Isbn" />
            <asp:TemplateField HeaderText="Genre" SortExpression="DepartmentID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="genreDropDown" runat="server" DataSourceID="genreDataSource" DataTextField="GenreName" DataValueField="GenreID" SelectedValue= <%# Bind("GenreID") %>>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                         <asp:DropDownList ID="genreDropDown2" runat="server" DataSourceID="genreDataSource" DataTextField="GenreName" DataValueField="GenreID" SelectedValue= <%# Bind("GenreID") %> Enabled="false">
                        </asp:DropDownList>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="NumberOfPages" HeaderText="NumberOfPages" SortExpression="NumberOfPages" />
            <asp:BoundField DataField="LandedStatus" HeaderText="LandedStatus" SortExpression="LandedStatus" />
            <asp:BoundField DataField="NameOfFriend" HeaderText="NameOfFriend" SortExpression="NameOfFriend" />
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment" />
            <asp:CommandField  ShowDeleteButton="True" ShowEditButton="True" />
        </Fields><%--VADYM HARKUSHA 300909484--%>
    </asp:DetailsView>
    <asp:SqlDataSource ID="booksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" 
        SelectCommand="SELECT * FROM Books  WHERE (Books.BooksID = @BooksID)"
        DeleteCommand="DELETE FROM [Books] WHERE [BooksID] = @BooksID" 
        UpdateCommand="UPDATE [Books] SET [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [Isbn] = @Isbn, [GenreID] = @GenreID, [NumberOfPages] = @NumberOfPages, [LandedStatus] = @LandedStatus, [NameOfFriend] = @NameOfFriend, [Comment] = @Comment WHERE [BooksID] = @BooksID" >
        <DeleteParameters>
            <asp:Parameter Name="BooksID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="Isbn" Type="String" />
            <asp:Parameter Name="GenreID" Type="Int32" />
            <asp:Parameter Name="NumberOfPages" Type="Int32" />
            <asp:Parameter Name="LandedStatus" Type="Byte" />
            <asp:Parameter Name="NameOfFriend" Type="String" />
            <asp:Parameter Name="Comment" Type="String" />
            <asp:Parameter Name="BooksID" Type="Int32" />
        </UpdateParameters>
         <SelectParameters>
            <asp:QueryStringParameter Name="BooksID" QueryStringField="cat" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="genreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT [GenreName], [GenreID] FROM [Genres]"></asp:SqlDataSource>
</asp:Content><%--VADYM HARKUSHA 300909484--%>

