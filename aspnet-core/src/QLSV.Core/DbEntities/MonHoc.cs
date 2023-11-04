using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class MonHoc : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set;}
        public string TenMonHoc { get; set;}
        public int SoTiet { get; set;}
        public int SoTinChi { get; set;}
        public string? GhiChu { get; set;}
        public ICollection<KetQua> ketQuas { get; set;}
    }
}
