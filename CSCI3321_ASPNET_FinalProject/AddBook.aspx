<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="CSCI3321_ASPNET_FinalProject.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Add New Book</h3>
    <div class="row">
        <div class="col-md-3">
            Book Title:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtBookTitle" runat="server" CssClass="form-control"></asp:TextBox> 
        </div>

        <div class="col-md-3">
            Author:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlAuthor" runat="server" DataSourceID="dsdAuthor" DataTextField="LastName" DataValueField="AuthorID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdAuthor" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT AuthorID, FirstName, LastName FROM Authors" InsertCommand="INSERT INTO Authors(AuthorID, FirstName+ ' ' + LastName) VALUES (,)"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Price:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox> 
        </div>

        <div class="col-md-3">
            Publisher:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlPublisher" runat="server" DataSourceID="dsdPublishers" DataTextField="PublisherName" DataValueField="PublisherID">
                
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdPublishers" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT PublisherID, PublisherName FROM Publishers"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Publish Date:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtDate" runat="server" CssClass="form-control"></asp:TextBox> 
        </div>

        <div class="col-md-3">
            Genre:
        </div>
        <div class="col-md-9">
            <asp:DropDownList ID="ddlGenre" runat="server" DataSourceID="dsdGenre" DataTextField="GenreName" DataValueField="GenreID">
            </asp:DropDownList>
            <asp:SqlDataSource ID="dsdGenre" runat="server" ConnectionString="<%$ ConnectionStrings:DBConnectionString %>" ProviderName="<%$ ConnectionStrings:DBConnectionString.ProviderName %>" SelectCommand="SELECT GenreID, GenreName FROM Genres"></asp:SqlDataSource>
        </div>

        <div class="col-md-3">
            Word Count:
        </div>
        <div class="col-md-9">
            <asp:TextBox ID="txtWordCount" runat="server" CssClass="form-control"></asp:TextBox> 
        </div>

        <div class="col-md-12">
            <asp:Button ID="btnSubmit" runat="server" Text="Add Book" class="btn btn-primary" OnClick="btnSubmit_Click"/>
        </div>

        
    </div>
</asp:Content>
