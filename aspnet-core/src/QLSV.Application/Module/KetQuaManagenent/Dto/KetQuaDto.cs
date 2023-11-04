using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.KetQuaManagenent.Dto
{
    public class KetQuaDto
    {
        public int? StudentId { get; set; }
        public int? MonHocId { get; set; }
        public int LanThi { get; set; }
        public double Diem { get; set; }
        public string TinhTrang { get; set; }
    }
}
