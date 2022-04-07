using _15._02.PeopleSetTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _15._02.Service
{
    class StudentService
    {
        private StudentTableAdapter _studentTableAdapter;
        public StudentService(PeopleSet peopleSet)
        {
            _studentTableAdapter = new StudentTableAdapter();
            _studentTableAdapter.Fill(peopleSet.Student);
        }
        public void Insert()
        {

        }
        //public StudentTableAdapter Find()
        //{

        //}
        //public List<StudentTableAdapter> GetAll()
        //{

        //}
    }
}
