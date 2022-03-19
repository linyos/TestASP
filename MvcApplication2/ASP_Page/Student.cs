using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class Student
{
    public int StudentID { get; set; }
    public string Name { get; set; }
    public string City { get; set; }

    public Student()
    { }

    public DataSet GetStudents()
    {
        DataSet ds = new DataSet();
        DataTable dt = new DataTable("Students");

        dt.Columns.Add("學生編號", typeof(System.Int32));
        dt.Columns.Add("姓名", typeof(System.String));
        dt.Columns.Add("城市", typeof(System.String));
        dt.Rows.Add(new object[] { 1001, "何馬", "海口" });
        dt.Rows.Add(new object[] { 1002, "李小靜", "上海" });
        ds.Tables.Add(dt);

        return ds;
    }
}