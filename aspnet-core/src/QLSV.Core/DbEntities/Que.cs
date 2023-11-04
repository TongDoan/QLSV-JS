using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class Que : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set; }
        public string TenQue { get; set; }
        public ICollection<Student> Students { get; set; }
    }
}
