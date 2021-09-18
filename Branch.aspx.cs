using System;
using System.Data;
using System.Data.SqlClient;

namespace RbS
{
    public partial class Branch : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\RbS\RbS\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("select Id,Name,Address,Phone from Branch", connection);
            DataTable dataTable = new DataTable();
            sqlDataAdapter.Fill(dataTable);
            GridView1.DataSource = dataTable;
            GridView1.DataBind();
            connection.Close();

        }

        protected void Addbranch_ServerClick(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "show();", true);
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            int Id = getmaxid();
            string query = "insert into Branch values(@Id,'" + Name.Text + "','" + Address.Text + "','" + Phone.Text + "')";
            SqlCommand command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@Id", Id);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "show();", true);

        }
        private int getmaxid()
        {
            int id;
            SqlCommand getid = new SqlCommand("select max(Id) from Branch", connection);
            connection.Open();
            id =Convert.ToInt32(getid.ExecuteScalar());
            id +=1;
            connection.Close();
            return id;
        }
    }
}