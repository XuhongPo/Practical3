using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practical3
{
    public partial class BusTicketing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true) //You can also type as - if (!IsPostBack)
            {
                lblTime.Text = "You are accessing this page on " +
                DateTime.Now.ToString();
            }
            txtDepartDt.Text = DateTime.Now.ToShortDateString();
        }

        protected void calDepartDt_SelectionChanged(object sender, EventArgs e)
        {
            txtDepartDt.Text = calDepartDt.SelectedDate.ToShortDateString();
        }

        protected void ddlTo_SelectedIndexChanged(object sender, EventArgs e)
        {
            //0- Select From
            //1- Hentian Duta
            //2- Hentian Putra

            //0- Select To
            //1- Butterworth
            //2- Seremban

            //From -To
            //1       1 Yes
            //2       1 No
            //1       2 No
            //2       2 Yes



            if (ddlTo.SelectedIndex != ddlFrom.SelectedIndex)
            {
                lblError.Text = "Sorry, we do not provide trip from Hentian Duta to Seremban" +
                    ddlFrom.SelectedItem.Text + "to" +
                    ddlTo.SelectedItem.Text + ".";
            }
            else
            {
                lblError.Text = string.Empty;
            }

            //Checking missing of Input
            if (txtAdult.Text == string.Empty)
            {
                lblError.Text = "Please enter number of adult.";
                return;
            }
            if (txtChild.Text.Length == 0)
            {
                lblError.Text = "Please enter number of child.";
                return;
            }

            //calculate Ticket Price
            float price = 0.00f;
            int adult, child;
            adult = Convert.ToInt16(txtAdult.Text);
            child = Convert.ToInt16(txtChild.Text);

            //check From and to 
            if (ddlFrom.SelectedIndex == 1 && ddlTo.SelectedIndex == 1)
            {
                //From hentian duta to butterworth
                price = adult * 34.00f + child * 25.00f;
            }
            else if (ddlFrom.SelectedIndex == 2 && ddlTo.SelectedIndex == 2)
            {
                //From hentian putra to butterWorth
                price = adult * 36.00f + child * 28.00f;
            }

            //Display output
            txtPrice.Text = price.ToString("C2");
        }

        protected void ddlFrom_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtPrice_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtAdult.Text = string.Empty;
            lblTime.Text = string.Empty;
            txtPrice.Text = string.Empty;
            ddlFrom.SelectedIndex = 0;
            
        }
    }
}