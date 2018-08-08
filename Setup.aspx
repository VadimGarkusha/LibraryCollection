<%@ Page Title="Setup" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="_Default" %>
<%@ MasterType VirtualPath="~/MyMasterPage.master" %><%--VADYM HARKUSHA 300909484--%>

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
    </div><%--VADYM HARKUSHA 300909484--%>
    <asp:Button ID="btnChooseTheme" CssClass="add-book-btn" runat="server" Text="Choose" OnClick="btnChooseTheme_Click"/>
    <script>
        document.getElementById("ContentPlaceHolder1_btnChooseTheme").onclick = function () {
            var cookieEnabled = (navigator.cookieEnabled) ? 1 : 0;

            if (typeof navigator.cookieEnabled == "undefined" && cookieEnabled == 0) {
                document.cookie = "testcookie";
                cookieEnabled = (document.cookie.indexOf("test­cookie") != -1) ? 1 : 0;
            }
            if (cookieEnabled == 0)
                alert("Turn on the Cookies in order to change the theme!");
        }
    </script>
</asp:Content>

<%--VADYM HARKUSHA 300909484--%>