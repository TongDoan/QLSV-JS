using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.StudentManagenent.Dto
{
    public class StudentDto
    {
        public String MaSV { get; set; }
        public String HoSV { get; set; }
        public String TenSV { get; set; }
        public String Phai { get; set; }
        public DateTime NgaySinh { get; set; }
        public String NoiSinh { get; set; }

        public String MaKhoa { get; set; }
        public float HocBong { get; set; }

    }
}
