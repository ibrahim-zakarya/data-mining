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

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        String selected = DropDownList1.SelectedValue;
        List<string> output = new List<string>();
        getActorFriends(selected, output);
        Label1.Text = "Actor’s friends:";
        BulletedList1.Items.Clear();
        foreach (string item in output)
        {
            ListItem tt = new ListItem(item);
            BulletedList1.Items.Add(item);
        }
    }

    private void getActorFriends(String input, List<string> output)
    {
        String newInput = input.Trim();


        AdomdConnection CON = new AdomdConnection(
            "Data Source=.;Catalog=ADMF18");
        CON.Open();

        AdomdCommand COM = CON.CreateCommand();

        string s = "SELECT Flattened  PREDICT([Actors],5" + ") FROM [ActorsMM] NATURAL PREDICTION JOIN (SELECT (" + "Select '" + newInput + "' as [actor]" + ") AS [Actors]) As T";

        COM.CommandText = s;

        AdomdDataReader DR = COM.ExecuteReader();

        while (DR.Read())
        {
            if (DR[0] != null)
                output.Add(DR[0].ToString());
        }

        DR.Close();
        CON.Close();
    }

    
}
