using Abp.Domain.Entities.Auditing;
using Abp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class TongKet : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set; }
        public int? StudentId { get; set; }
        public double Diem_TongKet { get; set; }
        public string? Xep_loai { get; set; }
        public string Hoc_ky { get; set; }
        public string Nam_hoc { get; set; }
    }
}
