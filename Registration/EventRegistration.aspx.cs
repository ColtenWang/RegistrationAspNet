using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration
{
    public partial class EventRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public RegistrationInfo RegistrationInfo
        {
            get
            {
                return new RegistrationInfo
                {
                    FirstName = TextBoxFirstName.Text,
                    LastName = TextBoxLastName.Text,
                    Email = TextBoxEmail.Text,
                    SelectedEvent = DropDownListEvent.SelectedValue

                };
            }
        }

    }

}