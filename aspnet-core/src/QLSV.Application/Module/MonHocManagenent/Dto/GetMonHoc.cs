using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.MonHocManagenent.Dto
{
    public class GetMonHoc
    {
        public int Id { get; set; }
        public string TenMonHoc { get; set; }
        public int SoTiet { get; set; }
        public int SoTinChi { get; set; }
        public string GhiChu { get; set; }
    }
}
