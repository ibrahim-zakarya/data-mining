<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Service4.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Who are actor’s friends</h1>                
            </hgroup>
            <hgroup class="title">
                <h2>***</h2>            
            </hgroup>
            
        </div>
    </section>
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Actors:</h3>
    <h3>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Actor" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Actor] FROM [Actors] ORDER BY [Actor]"></asp:SqlDataSource>
    </h3>
    <br />
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
    <asp:BulletedList ID="BulletedList1" runat="server" >
    </asp:BulletedList>
</asp:Content>