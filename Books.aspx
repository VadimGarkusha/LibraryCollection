<%@ Page Title="Books" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Default2" %>
<%@ MasterType VirtualPath="~/MyMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="title-h3">Books</h3>
    <asp:Literal ID="listBooks" runat="server"></asp:Literal>
</asp:Content>

