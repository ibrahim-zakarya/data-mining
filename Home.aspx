<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Services</h1>                
            </hgroup>
            <hgroup class="title">
                <h2>Select a service from the list below</h2>            
            </hgroup>
            
        </div>
    </section>
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <ul >
        <li><a id="A1" runat="server" href="~/Service1.aspx">Customers Who Bought This Item Also Bought</a></li>
        <li><a id="A2" runat="server" href="~/Service2.aspx">Get personalised recommendations</a></li>
        <li><a id="A3" runat="server" href="~/Service3.aspx">Who select the movie</a></li>
        <li><a id="A4" runat="server" href="~/Service4.aspx">Who are actor’s friends</a></li>
    </ul>
    <%--<h3>Avaliable movies:</h3>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Movie" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
    <br /> <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium"></asp:Label>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Movie] FROM [Movies] order by movie"></asp:SqlDataSource>
    <asp:BulletedList ID="BulletedList1" runat="server" >
    </asp:BulletedList>--%>
</asp:Content>