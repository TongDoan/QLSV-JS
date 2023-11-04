using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.LopManagenent.Dto
{
    public class GetLop
    {
        public int Id { get; set; }
        public int? KhoaId { get; set; }
        public string TenKhoa { get; set; }
        public string TenLop { get; set; }
    }
}
