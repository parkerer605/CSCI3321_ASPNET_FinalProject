<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="BookTable.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.BookTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>My Books</h3>

    <asp:Table ID="tblMyBooks" runat="server" CssClass="table tale-stripe">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Title</asp:TableHeaderCell>
            <asp:TableHeaderCell>Author's Name</asp:TableHeaderCell>
            <asp:TableHeaderCell>Price</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publish Date</asp:TableHeaderCell>
            <asp:TableHeaderCell>Publisher</asp:TableHeaderCell>
            <asp:TableHeaderCell>Genre</asp:TableHeaderCell>
        </asp:TableHeaderRow>
    </asp:Table>
</asp:Content>
