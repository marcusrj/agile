﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace AgileWebsite
{
    public partial class ViewFinishedProjects : System.Web.UI.Page
    {
        MySqlDataReader reader;
        public String[] firstName = new String[1];
        public String[] lastName = new String[1];
        public String[] department = new string[1];
        public String[] projectName = new String[1];
        public String[] RIS_accepted = new String[1];
        public String[] ass_dean_accepted = new String[1];
        public String[] dean_accepted = new String[1];
        public String[] data = new String[1];

        protected void Page_Load(object sender, EventArgs e)
        {
            DB database = new DB();
            String query = "SELECT project_name, ass_dean_accepted, dean_accepted, RIS_accepted, first_name, last_name, department FROM projects, users WHERE RIS_accepted IS NOT NULL AND ass_dean_accepted IS NOT NULL AND dean_accepted IS NOT NULL; ";

            int i = 0;

            reader = database.Select(query);
            try
            {
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        for (int n = 0; n < 6; n++)
                        {
                            data[i] += reader.GetString(n) + ',';
                        }

                        i++;

                        Array.Resize<String>(ref data, i + 1);

                    }
                }
            }
            catch
            {
                // nothing
            }
            for (int p = 0; p < i; p++)
            {
                System.Diagnostics.Debug.WriteLine("++++++++++++++++++++++++++++++++++");
                Array.Resize<String>(ref firstName, p + 1);
                Array.Resize<String>(ref lastName, p + 1);
                Array.Resize<String>(ref department, p + 1);
                Array.Resize<String>(ref projectName, p + 1);
                Array.Resize<String>(ref RIS_accepted, p + 1);
                Array.Resize<String>(ref ass_dean_accepted, p + 1);
                Array.Resize<String>(ref dean_accepted, p + 1);

                System.Diagnostics.Debug.WriteLine(data[p]);

                String[] info = data[p].Split(',');
                firstName[p] = info[0];
                lastName[p] = info[1];
                department[p] = info[2];
                projectName[p] = info[3];
                RIS_accepted[p] = info[4];
                ass_dean_accepted[p] = info[5];
                dean_accepted[p] = info[6];

                System.Diagnostics.Debug.WriteLine(firstName[p]);
                System.Diagnostics.Debug.WriteLine(lastName[p]);
                System.Diagnostics.Debug.WriteLine(department[p]);
                System.Diagnostics.Debug.WriteLine(projectName[p]);
                System.Diagnostics.Debug.WriteLine(RIS_accepted[p]);
                System.Diagnostics.Debug.WriteLine(ass_dean_accepted[p]);
                System.Diagnostics.Debug.WriteLine(dean_accepted[p]);

            }

        }
    }
}