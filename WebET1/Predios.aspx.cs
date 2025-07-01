using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Npgsql;

namespace WebET1
{
    public partial class Predios : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarPredios();
            }
        }

        private void CargarPredios()
        {
            string connStr = ConfigurationManager.ConnectionStrings["conexionPostgres"].ConnectionString;

            using (NpgsqlConnection conn = new NpgsqlConnection(connStr))
            {
                conn.Open();

                using (NpgsqlCommand cmd = new NpgsqlCommand("catastro.sp_listar_predios", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    NpgsqlDataAdapter da = new NpgsqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    GridViewPredios.DataSource = dt;
                    GridViewPredios.DataBind();
                }
            }
        }
    }
}
