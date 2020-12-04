using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace JobRecommend
{
    public partial class Test : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString);
        static DataTable dt;
        static int ptr = 0;

        static List<int> listNumbers = new List<int>();
        static int correctAnswers = 0;
        string questiontype;
       static  int ansFromDb = 0;

        //static string uid=;


        static int attempts = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //  uid = (string)Session["uid"];

                attempts = Convert.ToInt32((string)Session["attempts"]);
                connection.Open();
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    string sql = "select * from TestInfo where key_skill_id=" + Session["ksi"];
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sql, connection);
                    DataSet ds = new DataSet();
                    sqlDataAdapter.Fill(ds);
                    
                    dt = ds.Tables[0];
                    connection.Close();
                    generateNumbers();
                    loadQuestion();

                }
            }
            string username;
            
            username = (string)Session["uname"];
            lblUname.Text = username;
        }
        private void generateNumbers()
        {
            Random rand = new Random();
           
            int number;
            for (int i = 0; i < 10; i++)
            {
                do
                {
                    number = rand.Next(0, dt.Rows.Count);
                } while (listNumbers.Contains(number));
                listNumbers.Add(number);
            }
        }
        private void uncheckRadios()
        {
            rdOption1.Checked = false;
            rdOption2.Checked = false;
            rdOption3.Checked = false;
            rdOption4.Checked = false;

        }
        private void loadQuestion()
        {
            uncheckRadios();
            string srno = "Q: " + (ptr + 1) + "/10";
            lblSerial.Text = srno;
            lblQuestion.Text = dt.Rows[listNumbers[ptr]].ItemArray[1].ToString();
            rdOption1.Text = dt.Rows[listNumbers[ptr]].ItemArray[3].ToString();
            rdOption2.Text = dt.Rows[listNumbers[ptr]].ItemArray[4].ToString();
            rdOption3.Text = dt.Rows[listNumbers[ptr]].ItemArray[5].ToString();
            rdOption4.Text = dt.Rows[listNumbers[ptr]].ItemArray[6].ToString();
            ansFromDb = Convert.ToInt32(dt.Rows[listNumbers[ptr]].ItemArray[7].ToString());
            ptr++;
        }

        protected void rdOption4_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            if (!checkCheckedOrNot())
                Response.Write("<script>alert('Please select an answer');</script>");
            else
            {
                int userAns = getUserAns();
                if (userAns == ansFromDb)
                    correctAnswers++;
                if (ptr >= 10)
                {
                    submitResultToDb();
                    updateMarksPercentage();

                    Response.Write("<script>alert('Press Ok Too see result:" + correctAnswers + "');window.location='NewUserDashboard.aspx';</script>");
                    ptr = 0;

                    listNumbers.Clear();
                    correctAnswers = 0;
                    ansFromDb = 0;


                }
                else
                    loadQuestion();
            }
        }

        private void updateMarksPercentage()
        {
            attempts++;
            connection.Open();
            string sql = "update KeySkillInfo set marks=" + (correctAnswers * 10) + ",status='ATTENDED' , attempts= "+ attempts + " where uid="
                + Session["uid"] + " and key_skill_id=" + Session["ksi"];
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
            int x = sqlcommand.ExecuteNonQuery();
            connection.Close();

            // 
            //total uid row count 4
            //int tcount=4;
            //


            //
            //int acount = 2

            /*
             * 
             * if(tcount==acount)
            {

            int avg =

            update avg in profile sitescore 
            }
            */
        }

        private int getUserAns()
        {
            
            if (rdOption1.Checked)
                return 1;
            if (rdOption2.Checked)
                return 2;
            if (rdOption3.Checked)
                return 3;
            if (rdOption4.Checked)
                return 4;

            return 0;
            
        }

        private bool checkCheckedOrNot()
        {
            bool check = false;
            if (rdOption1.Checked)
                check = true;
            if (rdOption2.Checked)
                check = true;
            if (rdOption3.Checked)
                check = true;
            if (rdOption4.Checked)
                check = true;
            return check;
        }
        private void submitResultToDb()
        {

            connection.Open();
            string sql = "insert into TestResultInfo(uid,questiontype,correctans) values(" 
                + Session["uid"] + ",'"+ questiontype + "'," + correctAnswers+ ")";
            SqlCommand sqlcommand = new SqlCommand(sql, connection);
            int x = sqlcommand.ExecuteNonQuery();
            connection.Close();

           

        }
    }
}