using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class KetQua : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set;}
        public int? StudentId { get; set;}//loc rieng
        public int? MonHocId { get; set;} //loc
        public int? GiaoVienId { get; set;}
        public double DiemQuaTrinh { get; set;}
        public double DiemCuoiKy { get; set; }
        public double DiemTongKet { get; set; } //SapXep
        public string Hoc_ky { get; set; }
        public string Nam_hoc { get; set; }
        public string? TinhTrang { get; set;}//loc

    }
}
