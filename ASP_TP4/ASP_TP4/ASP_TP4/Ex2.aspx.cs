using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Globalization;
using System.Text.RegularExpressions;

namespace ASP_TP4
{
    public partial class Ex2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void valid_date_value_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Solution 1
            /* Regex: 0[1-9]|1[0-2]/[1-2099] */

            // Solution 2
            DateTime validDate;
            bool dateIsValid = DateTime.TryParseExact(args.Value, "MM/yyyy",
                CultureInfo.InvariantCulture, DateTimeStyles.None, out validDate);
            args.IsValid = (dateIsValid && validDate > DateTime.Today);

            // Solution 3
            //string dateString = args.Value;
            //string monthString = dateString.Substring(0, 1);
            //string yearString = dateString.Substring(3);
            //int month = 0, year = 0;
            //bool dateIsValid = (int.TryParse(monthString, out month) && int.TryParse(yearString, out year)
            //                && month >= 1 && month <= 12 && year >= 1);
            //bool dateIsLaterThanToday = (month > DateTime.Today.Month && year >= DateTime.Today.Year);
            //args.IsValid = (dateIsValid && dateIsLaterThanToday);
        }

        protected void valid_card_number_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (RadioButtonList1.SelectedIndex == 0)
                args.IsValid = Regex.IsMatch(args.Value, "^[51-55]") && 
                    args.Value.Length == 16;
            
            else if (RadioButtonList1.SelectedIndex == 1)
                args.IsValid = Regex.IsMatch(args.Value, "^4") && 
                    (args.Value.Length == 13 || args.Value.Length == 16);
            
            else
                args.IsValid = Regex.IsMatch(args.Value, "^34|37") && 
                    args.Value.Length == 15;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsValid)
                Label1.Text = "Validé à " + DateTime.Now.ToLongTimeString();
        }
    }
}