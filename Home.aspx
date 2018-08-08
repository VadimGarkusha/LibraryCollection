<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/MyMasterPage.master" %><%--VADYM HARKUSHA 300909484--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Home</title>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid text-center desc-div">
        <h3 class="margin">What is it?</h3>
        <p>The Library Collection website is developed for the convenient use of books.<br />
            It has various functionality that helps in everyday life for managing books.</p>
    </div>
    <div class="container-fluid text-center">
        <h3 class="margin">What can you do with it?</h3>
        <br>
        <div class="row">
            <div class="col-sm-4">
                <h4>Store</h4>
                <i class="fa fa-floppy-o" aria-hidden="true"></i>
            </div>
            <div class="col-sm-4">
                <h4>Search</h4>
                <i class="fa fa-search" aria-hidden="true"></i>
            </div>
            <div class="col-sm-4">
                <h4>Download</h4><%--VADYM HARKUSHA 300909484--%>
                <i class="fa fa-download" aria-hidden="true"></i>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-4">
                <h4>Upload</h4>
                <i class="fa fa-upload" aria-hidden="true"></i>
            </div>
            <div class="col-sm-4">
                <h4>Sort</h4>
                <i class="fa fa-sort-alpha-desc" aria-hidden="true"></i>
            </div>
            <div class="col-sm-4">
                <h4>Manage</h4>
            <i class="fa fa-pencil" aria-hidden="true"></i>
                </div>
        </div>
    </div>
</asp:Content>

<%--VADYM HARKUSHA 300909484--%>