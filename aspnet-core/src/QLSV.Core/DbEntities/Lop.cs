using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class Lop : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set;}
        public int? KhoaId { get; set; }
        public string TenLop { get; set; }
        public ICollection<Student> Students { get; set; }
    }
}
