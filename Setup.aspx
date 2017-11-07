<%@ Page Title="Setup" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/MyMasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3 class="title-h3">Choose a theme you like more</h3>
    <div class="setup-col col-sm-6 col-xs-6 col-sm-6 col-lg-6">
        <asp:RadioButton ID="rbtnDark" runat="server" Text="Dark" GroupName="Theme" />
        <img src="images/Dark.png"/>
    </div>
    <div class="setup-col col-sm-6 col-xs-6 col-sm-6 col-lg-6">
        <asp:RadioButton ID="rbtnLight" runat="server" Text="Light" GroupName="Theme" />
        <img src="images/Light.png"/>
    </div>
    <asp:Button ID="btnChooseTheme" CssClass="add-book-btn" runat="server" Text="Choose" OnClick="btnChooseTheme_Click"/>
</asp:Content>

