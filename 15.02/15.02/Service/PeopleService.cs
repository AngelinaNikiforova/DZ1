using _15._02.PeopleSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static _15._02.PeopleSet;

namespace _15._02.Service
{
    class PeopleService
    {
        private SqlConnection sqlConnection;
        private readonly PeopleTableAdapter _peopleTableAdapter;
        public PeopleService(PeopleSet peopleSet)
        {
            string conStr = ConfigurationManager.ConnectionStrings["_15._02.Properties.Settings.ShoolConnectionString"].ConnectionString;
            sqlConnection = new SqlConnection(conStr);
            _peopleTableAdapter = new PeopleTableAdapter();
            _peopleTableAdapter.Fill(peopleSet.People);
        }
        public void Insert(string name, string lastName)
        {
            _peopleTableAdapter.Insert(name,lastName);
        }
        public void Find(int index)
        {
            _peopleTableAdapter.Find();
        }
        public PeopleDataTable GetAll()
        {
            return _peopleTableAdapter.GetData();
        }
        public void Delet(int index)
        {
            _peopleTableAdapter.Delete(index);
        }
        public void Update(DataRow row)
        {
            _peopleTableAdapter.Update(row);
        }
    }
}
