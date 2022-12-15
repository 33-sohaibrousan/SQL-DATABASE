using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace task_14_DEC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = "data source=DESKTOP-7JI0FAF\\SQLEXPRESS; database=task3; integrated security=SSPI";
              con.Open();


                string name = TextBox1.Text;
                int age = Convert.ToInt32(TextBox2.Text);
                string city= TextBox3.Text;
                int phone= Convert.ToInt32(TextBox4.Text);
                

                string insert= "insert into customers (Name,age,city,phone_number) values('"+name+"','"+age+"','"+city+"','"+phone+"')";
                SqlCommand cmd =new SqlCommand(insert,con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException r)
            {
                Response.Write(r.Message);
            }

        }
        private void usershow()
        {
          try
            {
                SqlConnection connectdata= new SqlConnection("data source=DESKTOP-7JI0FAF\\SQLEXPRESS; database=task3; integrated security=SSPI");
                SqlCommand cmd2 = new SqlCommand("select * from customers", connectdata);
                connectdata.Open();

                SqlDataReader sdr= cmd2.ExecuteReader();
                string tableusers = "<table class='table table-striped'> <tr><th>name</th> <th>age</th> <th>city</th> <th>phonenumber</th>";

                while(sdr.Read())
                {
                    tableusers += $"<tr><td>{sdr[1]}</td> <td>{sdr[2]}</td>  <td>{sdr[3]}</td>  <td>{sdr[4]}</td> </tr>";
                }
                tableusers += "</table>";
                Label6.Text = tableusers;
                connectdata.Close();
            }
            catch(Exception w)
            {
                Label6.Text=w.Message;
            }

        }
    }
}