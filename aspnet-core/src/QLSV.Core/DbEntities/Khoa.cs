using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class Khoa : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set;}
        public string TenKhoa { get; set;}
        public ICollection<Lop> lops { get; set;}
        public ICollection<GiaoVien> giaoViens { get; set; }
    }
}
