using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.KetQuaManagenent.Dto
{
    public class GetKetQua
    {
        public int Id { get; set; }
        public int? StudentId { get; set; }
        public string Name { get; set; }
        public int? MonHocId { get; set; }
        public string TenMonHoc { get; set; }
        public int SoTinChi { get; set; }
        public int? GiaoVienId { get; set; }
        public string TenGiaoVien { get; set; }
        public double DiemQuaTrinh { get; set; }
        public double DiemCuoiKy { get; set; }
        public double DiemTongKet { get; set; }
        public string Hoc_ky { get; set; }
        public string Nam_hoc { get; set; }
        public string TinhTrang { get; set; }
    }
}
