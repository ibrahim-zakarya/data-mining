<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Service2.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>Get personalised recommendations</h1>                
            </hgroup>
            <hgroup class="title">
                <h2>Enter and Select input and press submit to get the Recommended Movie</h2>            
            </hgroup>
            
        </div>
    </section>
</asp:Content>


<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>&nbsp;</h3>
&nbsp;<asp:Label ID="lbl_result" runat="server" CssClass="auto-style3" Font-Bold="True" Font-Size="24px" ForeColor="Blue"></asp:Label> &nbsp;<table class="auto-style1">
        <tr>
            <td class="auto-style2">Enter Age:</td>
            <td>
                <asp:TextBox ID="txt_age" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_age" ErrorMessage="Please Enter Age!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Education Level:</td>
            <td>
                <asp:DropDownList ID="drop_Education" runat="server" DataSourceID="SqlDataSource1" DataTextField="Education_Level" DataValueField="Education_Level" Height="25px" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Education Level] AS Education_Level FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Gender:</td>
            <td>
                <asp:DropDownList ID="drop_gender" runat="server" DataSourceID="SqlDataSource2" DataTextField="Gender" DataValueField="Gender" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Gender] FROM [Customers] WHERE ([Gender] IS NOT NULL)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Home Ownership:</td>
            <td>
                <asp:DropDownList ID="drop_home" runat="server" DataSourceID="SqlDataSource3" DataTextField="Home_Ownership" DataValueField="Home_Ownership" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Home Ownership] AS Home_Ownership FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Internet Connection:</td>
            <td>
                <asp:DropDownList ID="drop_internet" runat="server" DataSourceID="SqlDataSource4" DataTextField="Internet_Connection" DataValueField="Internet_Connection" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Internet Connection] AS Internet_Connection FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Marital Status:</td>
            <td>
                <asp:DropDownList ID="drop_marital" runat="server" DataSourceID="SqlDataSource5" DataTextField="Marital_Status" DataValueField="Marital_Status" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Marital Status] AS Marital_Status FROM [Customers] WHERE ([Marital Status] IS NOT NULL)"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Movie Selector:</td>
            <td>
                <asp:DropDownList ID="drop_movie_s" runat="server" DataSourceID="SqlDataSource6" DataTextField="Movie_Selector" DataValueField="Movie_Selector" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Movie Selector] AS Movie_Selector FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Number of Bathrooms:</td>
            <td>
                <asp:TextBox ID="txt_bathrooms" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_bathrooms" ErrorMessage="Please Enter Number of Bathroom!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Number of Bedrooms:</td>
            <td>
                <asp:TextBox ID="txt_bedrooms" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_bedrooms" ErrorMessage="Please Enter Number of Bedrooms!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Number of Cars:</td>
            <td>
                <asp:TextBox ID="txt_cars" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_cars" ErrorMessage="Please Enter Number of Cars!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Number of Children:</td>
            <td>
                <asp:TextBox ID="txt_Children" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_Children" ErrorMessage="Please Enter The Number of Children!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Number of TVs:</td>
            <td>
                <asp:TextBox ID="txt_tvs" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_tvs" ErrorMessage="Please Enter Number of TVs!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">PPV Freq:</td>
            <td>
                <asp:DropDownList ID="drop_ppv" runat="server" DataSourceID="SqlDataSource7" DataTextField="PPV_Freq" DataValueField="PPV_Freq" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [PPV Freq] AS PPV_Freq FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Buying Freq:</td>
            <td>
                <asp:DropDownList ID="drop_buying" runat="server" DataSourceID="SqlDataSource8" DataTextField="Buying_Freq" DataValueField="Buying_Freq" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Buying Freq] AS Buying_Freq FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Format:</td>
            <td>
                <asp:DropDownList ID="drop_format" runat="server" DataSourceID="SqlDataSource9" DataTextField="Format" DataValueField="Format" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Format] FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Renting Freq:</td>
            <td>
                <asp:DropDownList ID="drop_rent_f" runat="server" DataSourceID="SqlDataSource10" DataTextField="Renting_Freq" DataValueField="Renting_Freq" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Renting Freq] AS Renting_Freq FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Viewing Freq:</td>
            <td>
                <asp:DropDownList ID="drop_viewing_f" runat="server" DataSourceID="SqlDataSource11" DataTextField="Viewing_Freq" DataValueField="Viewing_Freq" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Viewing Freq] AS Viewing_Freq FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Theater Freq:</td>
            <td>
                <asp:DropDownList ID="drop_theater" runat="server" DataSourceID="SqlDataSource12" DataTextField="Theater_Freq" DataValueField="Theater_Freq" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [Theater Freq] AS Theater_Freq FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">TV Movie Freq:</td>
            <td>
                <asp:DropDownList ID="drop_tv_movie" runat="server" DataSourceID="SqlDataSource13" DataTextField="TV_Movie_Freq" DataValueField="TV_Movie_Freq" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [TV Movie Freq] AS TV_Movie_Freq FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">TV Signal:</td>
            <td>
                <asp:DropDownList ID="drop_tv_signal" runat="server" DataSourceID="SqlDataSource14" DataTextField="TV_Signal" DataValueField="TV_Signal" Width="210px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource14" runat="server" ConnectionString="<%$ ConnectionStrings:ADMConnectionString %>" SelectCommand="SELECT DISTINCT [TV Signal] AS TV_Signal FROM [Customers]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <br />
<asp:Button ID="btn_cluster" runat="server" Text="Submit" OnClick="btn_cluster_Click" />
    
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 186px;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</asp:Content>
