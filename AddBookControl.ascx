<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddBookControl.ascx.cs" Inherits="AddBook" %>
        <asp:TextBox ID="txtNameOfBook" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFieldNameOfBook" runat="server" ControlToValidate="txtNameOfBook" Display="Dynamic" ErrorMessage="Name of Book field is required!"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFieldAuthor" runat="server" ControlToValidate="txtAuthor" Display="Dynamic" ErrorMessage="Author field is required!"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="txtIsbn" runat="server"></asp:TextBox><br />