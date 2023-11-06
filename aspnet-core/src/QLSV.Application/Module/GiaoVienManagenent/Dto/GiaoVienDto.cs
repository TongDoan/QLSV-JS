using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.GiaoVienManagenent.Dto
{
    public class GiaoVienDto
    {
        public string Name { get; set; } //loc
        public int Age { get; set; }
        public string Phai { get; set; } //loc
        public string NgaySinh { get; set; }
        public int? KhoaId { get; set; }
    }
}
