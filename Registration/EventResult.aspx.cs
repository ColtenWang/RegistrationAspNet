﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class EventResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!PreviousPage.IsValid)
                {
                    LabelResult.Text = "Error in previous page";
                    return;
                }
                else
                {
                    RegistrationInfo ri = PreviousPage.RegistrationInfo;
                    LabelResult.Text = String.Format("{0} {1} selected the event {2}",
                    ri.FirstName, ri.LastName, ri.SelectedEvent);
                }
            }
            catch
            {
                LabelResult.Text = "The originating page must contain " +
                "textFirstName, textLastName, textEmail controls";
            }
        }
    }
}