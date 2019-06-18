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
        Console.WriteLine("sdf");

    }

    private void getBoughtToghtherMovies(String input, List<string> output)
    {
        String newInput = input.Trim();
        

        AdomdConnection CON = new AdomdConnection(
            "Data Source=.;Catalog=ADMF18");
        CON.Open();

        AdomdCommand COM = CON.CreateCommand();

        string s = "SELECT Flattened  PREDICT([Movies],5" + ") FROM [CustomersMM] NATURAL PREDICTION JOIN (SELECT (" + "Select '" + newInput + "' as [movie]" + ") AS [Movies]) As T";
        //s += "Select '"+input+"' as [movie]";

        //s += ") AS [Movies]) As T";


        COM.CommandText = s;

        //Label2.Text = input + "Test";


        AdomdDataReader DR = COM.ExecuteReader();

        while (DR.Read())
        {
            if (DR[0] != null)
                output.Add(DR[0].ToString());

        }

        DR.Close();
        CON.Close();

    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
        String selected = DropDownList1.SelectedValue;
        List<string> output = new List<string>();
        getBoughtToghtherMovies(selected, output);
        Label1.Text = "Customers Who Bought This Item Also Bought:";
        BulletedList1.Items.Clear();
        foreach (string item in output)
        {
            ListItem tt = new ListItem(item);
            BulletedList1.Items.Add(item);
        }
    }

//    select flattened predict([Actors],5)
//From ActorsMM
//natural prediction join
//(select (select 'Pacino, Al' as [actor]
//)
// as [Actors])
//as T
}
//select flattened predict([Movies],5)
//From CustomersMM
//natural prediction join
//(select (select 'Star wars' as [movie]
////union
////select 'Star Wars Episode II: Attack of the Clones' as [movie]
//)
// as [Movies])
//as T
//SELECT Flattened  PREDICT([Movies],5) FROM [CustomersMM] NATURAL PREDICTION JOIN (SELECT (Select 'Star wars' as [movie]) AS [Movies]) As T
//SELECT Flattened  PREDICT([Movies],5 )
//           FROM [CustomersMM] 
//          NATURAL PREDICTION JOIN
//          (SELECT ( Select 'Star wars' as [movie]
//
//         )  AS [Movies]) As T
//         SELECT Flattened  PREDICT([Movies],5)           FROM [CustomersMM]           NATURAL PREDICTION JOIN          (SELECT ( Select 'Star wars' as [movie] )  AS [Movies]) As T
//0.992	1.46038841599392	Star Wars Episode I: The Phantom Menace = Existing, Star Wars Episode V: Empire Strikes Back = Existing -> Star Wars Episode VI: Return of the Jedi = Existing
