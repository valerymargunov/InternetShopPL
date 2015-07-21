using SS.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SS.Web.Account
{
    public partial class login : System.Web.UI.Page
    {
        private AccountRepository _accountRepository;

        protected void Page_Load(object sender, EventArgs e)
        {
            _accountRepository = new AccountRepository();
        }

        protected void butLogin_Click(object sender, EventArgs e)
        {
            var emailAddress = Request.Form[2].ToString();
            var password = Request.Form[3].ToString();
            var status = _accountRepository.Authorize(emailAddress, password);
            if (status)
            {
                Response.Redirect("contacts.aspx");
            }
            else
            {
                errorMessage.Text = "Пользователя с такими данными не существует";
            }
            //ClientScript.RegisterStartupScript(this.GetType(), String.Empty, String.Format("alert({0});", status));
        }
    }
}