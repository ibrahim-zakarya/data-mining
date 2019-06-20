using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AnalysisServices.AdomdClient;



public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btn_cluster_Click(object sender, EventArgs e)
    {
        AdomdConnection con = new AdomdConnection(
            "Data Source=.; Catalog=MovieDM");
        con.Open();
        AdomdCommand com = new AdomdCommand();
        com.Connection = con;
        string str = drop_Education.SelectedValue;
        str = str.ToString().Replace("'", "''");
        string str1 = drop_tv_signal.SelectedValue;
        str1 = str1.ToString().Replace("'", "''");
        string s = string.Format(@"select Predict ([Movie])
                      from CustomersMoviesMM
                        natural prediction join
                          (select {0} as [Age],
                            '{1}' as [Education Level],
                            '{2}' as [Gender],
                            '{3}' as [Home Ownership],
                            '{4}' as [Internet Connection],
                            '{5}' as [Marital Status],
                            '{6}' as [Movie Selector],
                            {7} as [Num Bathrooms],
                            {8} as [Num Bedrooms],
                            {9} as [Num Cars],
                            {10} as [Num Children],
                            {11} as [Num T Vs],
                            '{12}' as [PPV Freq],
                            '{13}' as [Buying Freq],
                            '{14}' as [Format],
                            '{15}' as [Renting Freq],
                            '{16}' as [Viewing Freq],
                            '{16}' as [Theater Freq],
                            '{17}' as [TV Movie Freq],
                            '{18}' as [TV Signal]
                        ) as t ",
                               txt_age.Text,
                               str ,//drop_Education.SelectedValue,
                               drop_gender.SelectedValue,
                               drop_home.SelectedValue,
                               drop_internet.SelectedValue,
                               drop_marital.SelectedValue,
                               drop_movie_s.SelectedValue,
                               txt_bathrooms.Text,
                               txt_bedrooms.Text,
                               txt_cars.Text,
                               txt_Children.Text,
                               txt_tvs.Text,
                               drop_ppv.SelectedValue,
                               drop_buying.SelectedValue,
                               drop_format.SelectedValue,
                               drop_rent_f.SelectedValue,
                               drop_viewing_f.SelectedValue,
                               drop_theater.SelectedValue,
                               drop_tv_movie.SelectedValue,
                               str1//drop_tv_signal.SelectedValue
                            );
        com.CommandText = s;
        AdomdDataReader dr = com.ExecuteReader();
        if (dr.Read())
        {
            if (dr[0] != null)
                lbl_result.Text = dr[0].ToString();
        }
        dr.Close();
        con.Close();

    }


}