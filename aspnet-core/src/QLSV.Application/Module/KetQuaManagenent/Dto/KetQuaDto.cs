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
        public int? GiaoVienId { get; set; }
        public double DiemQuaTrinh { get; set; }
        public double DiemCuoiKy { get; set; }
        public string Hoc_ky { get; set; }
        public string Nam_hoc { get; set; }
        public string TinhTrang { get; set; }
    }
}
