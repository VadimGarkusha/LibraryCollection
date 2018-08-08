<%--VADYM HARKUSHA 300909484--%><%@ Page Title="Search" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Default2" %>

<%@ MasterType VirtualPath="~/MyMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<h3 class="title-h3">Search</h3>

	<div class="col-sm-4 col-md-4 search-dl">

		<h4 class="serach-h4">Genres: </h4><asp:DropDownList ID="ddlGenres" runat="server" DataSourceID="genersDataSource" DataTextField="GenreName" DataValueField="GenreID" AppendDataBoundItems="True">
			<asp:ListItem Text="Select All" Value="-1" />
			</asp:DropDownList>
		<asp:SqlDataSource ID="LibraryCollection" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" 
			SelectCommand="SELECT Books.BookTitle, Books.BooksID, Books.BookAuthor, Books.Isbn, Books.GenreID, Books.NameOfFriend, Books.LandedStatus,
			Genres.GenreName, Books.NumberOfPages, Books.Comment FROM Books RIGHT OUTER JOIN Genres ON Books.GenreID = Genres.GenreID 
			WHERE ((Books.GenreID = @GenreID) OR (@GenreID = @ShowAll1)) AND 
			((Books.NameOfFriend = @NameOfFriend) OR (@NameOfFriend = @ShowAll2)) AND (Books.BooksID is not null) 
			 AND ((Books.BookTitle like '%' + @SearchValue + '%') or (Books.BookAuthor like '%' + @SearchValue + '%'))">
			<SelectParameters>
				<asp:ControlParameter ControlID="ddlGenres" Name="GenreID" PropertyName="SelectedValue" Type="Int32" />
				<asp:Parameter Name="ShowAll1" Type="Int32" DefaultValue="-1"/>
				<asp:ControlParameter ControlID="ddlFriends" Name="NameOfFriend" PropertyName="SelectedValue" Type="String" />
				<asp:Parameter Name="ShowAll2" Type="String" DefaultValue="-1"/>
				<asp:ControlParameter ControlID="txtSearch" Name="SearchValue" PropertyName="Text" Type="String" DefaultValue="%"/>
				<%--<asp:Parameter Name="SearchValue" Type="String" DefaultValue="%"/>--%>
			</SelectParameters>
		</asp:SqlDataSource><%--VADYM HARKUSHA 300909484--%>
		<asp:SqlDataSource ID="genersDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT [GenreName], [GenreID] FROM [Genres]"></asp:SqlDataSource>
		<asp:SqlDataSource ID="namesDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT [NameOfFriend] FROM [Books] WHERE ([NameOfFriend] IS NOT NULL) and ([NameOfFriend]!='')"></asp:SqlDataSource>
	</div>
	<div class="col-sm-4 col-md-4 search-dl">
		<h4 class="serach-h4">Friends: </h4>
		<asp:DropDownList ID="ddlFriends" runat="server" AppendDataBoundItems="True" DataSourceID="namesDataSource" DataTextField="NameOfFriend" DataValueField="NameOfFriend" >
			<asp:ListItem Value="-1">Select All</asp:ListItem>
			</asp:DropDownList>
	</div>
	<div class="col-sm-4 col-md-4 search-dl">
		<!-- Button to Open the Modal -->
  <button type="button" class="add-book-btn " data-toggle="modal" data-target="#myModal">
	Add Genre
  </button>

  <!-- The Modal -->
  <div class="modal fade" id="myModal">
	<div class="modal-dialog modal-lg">
	  <div class="modal-content">
	  
		<!-- Modal Header -->
		<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal">&times;</button>
		  <h4 class="modal-title">Add Genre</h4>

		</div>
		
		<!-- Modal body -->
		<div class="modal-body">
			<asp:LoginView ID="LoginView1" runat="server">

			</asp:LoginView>
			<asp:Label ID="lblAddGenre" runat="server" Text="Label" CssClass="title-h3">Name: </asp:Label>
			<asp:TextBox ID="txtGenre" runat="server"></asp:TextBox>
			<asp:Button ID="btnAddGenre" runat="server" Text="Add" OnClick="btnAddGenre_Click" CssClass="add-book-btn" />
			<asp:Label ID="lblError" runat="server" Text=""></asp:Label>
		</div>
		
		<!-- Modal footer -->
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		</div>
		
	  </div>
	</div>
  </div>
	</div>
		<div class="col-sm-8 col-md-8 search-dl">
		<h4 class="serach-h4">Search by Title or Author: </h4>
		<asp:TextBox ID="txtSearch" runat="server"  CssClass="search-field" AutoPostBack="False" ></asp:TextBox>
		</div>
	<div class="col-sm-4 col-md-4 search-dl">
		<asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="add-book-btn" OnClick="btnSearch_Click"/>
		</div>
	<asp:GridView ID="gvSearchResult" runat="server" DataSourceID="LibraryCollection"  CssClass="table table-striped books" AllowPaging="True" AutoGenerateColumns="False">
		<Columns>
			<asp:BoundField DataField="BookTitle" HeaderText="Title" />
			<asp:BoundField DataField="BookAuthor" HeaderText="Author" />
			<asp:BoundField DataField="Isbn" HeaderText="ISBN" />
			<asp:BoundField DataField="GenreName" HeaderText="Genre" />
			<asp:BoundField DataField="NameOfFriend" HeaderText="Friend's Name" />
			<asp:BoundField DataField="NumberOfPages" HeaderText="Pages" />
		</Columns>
	</asp:GridView>
</asp:Content>

<%--VADYM HARKUSHA 300909484--%>