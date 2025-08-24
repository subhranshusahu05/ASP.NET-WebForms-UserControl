using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nothing needed here for now
        }

        protected void imgDate_Click(object sender, EventArgs e)
        {
            // Toggle calendar visibility when the image is clicked
            cldDate.Visible = !cldDate.Visible;
        }

        protected void cldDate_SelectionChanged(object sender, EventArgs e)
        {
            // Put selected date into textbox
            txtDate.Text = cldDate.SelectedDate.ToString("dd/MM/yyyy");

            // Hide the calendar after selection
            cldDate.Visible = false;
        }

        protected void cldDate_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
        {
            // Example: update textbox to show which month is visible
            txtDate.Text = "Now viewing: " + e.NewDate.ToString("MMMM yyyy");
        }

    }
}