<%--VADYM HARKUSHA 300909484--%>
<%@ Page Title="Add Book" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/MyMasterPage.master" %>
<%@ Register Src="~/AddBookControl.ascx" TagPrefix="uc1" TagName="AddBookControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
    <div id="add-book-div">
    <h3 class="title-h3">Add Book</h3>
    <div class="col-sm-6 col-md-6 add-book-col ">
        <h5>Name of book:</h5>
        <h5>Author(s):</h5>
        <h5>ISBN number:</h5>
        <h5>Genre:</h5>
        <h5>Number of pages:</h5>
        <h5>Lended to a friend:</h5>
        <h5>Name of a friend:</h5>
        <h5>Comments:</h5>
    </div>
        <%--VADYM HARKUSHA 300909484--%>
    <div class="col-sm-6 col-md-6 add-book-col ">
        <uc1:AddBookControl runat="server" ID="AddBookControl" />
        <asp:DropDownList ID="ddListGenre" runat="server" Height="29px" Width="172px" DataSourceID="LibraryCollection" DataTextField="GenreName" DataValueField="GenreID">
            <asp:ListItem Selected="True">Comedy</asp:ListItem>
            <asp:ListItem>Drama</asp:ListItem>
            <asp:ListItem>Horror fiction</asp:ListItem>
            <asp:ListItem>Literary realism</asp:ListItem>
            <asp:ListItem>Romance</asp:ListItem>
            <asp:ListItem>Tragedy</asp:ListItem>
            <asp:ListItem>Fantasy</asp:ListItem>
            <asp:ListItem>Mythology</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="LibraryCollection" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryCollection %>" SelectCommand="SELECT [GenreID], [GenreName] FROM [Genres]"></asp:SqlDataSource>
        <br />
        <asp:TextBox ID="txtNumberOfPages" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFieldNumberPages" runat="server" ControlToValidate="txtNumberOfPages" Display="Dynamic" ErrorMessage="Number of pages field is required!"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="comValNumberPages" runat="server" ControlToValidate="txtNumberOfPages" Display="Dynamic" ErrorMessage="Enter positive integer!" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="1"></asp:CompareValidator>
        <br />
        <asp:RadioButton ID="rbtnLendedToFriendYes" runat="server" GroupName="LendedToFriend" Text="Yes" OnCheckedChanged="rbtnLendedToFriendYes_CheckedChanged" AutoPostBack="True"/>
        <asp:RadioButton ID="rbtnLendedToFriendNo" runat="server" GroupName="LendedToFriend" Text="No" Checked="True" OnCheckedChanged="rbtnLendedToFriendYes_CheckedChanged" AutoPostBack="True"/>
        <br />
        <asp:TextBox ID="txtNameFriend" runat="server" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFieldNameFriend" runat="server" ControlToValidate="txtNameFriend" Display="Dynamic" ErrorMessage="Name of a friend field is mandatory!"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtComment" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
    </div>
        </div>

        <asp:Button CssClass="add-book-btn" ID="btnCancel" runat="server"  Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" AutoPostBack="True"/>

        <asp:Button CssClass="add-book-btn" ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />

</asp:Content>
<%--VADYM HARKUSHA 300909484--%>
