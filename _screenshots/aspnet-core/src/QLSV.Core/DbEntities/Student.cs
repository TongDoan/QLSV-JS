using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class Student : FullAuditedAggregateRoot, IMayHaveTenant
    {
        public int? TenantId { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string Class { get; set; }
        public string Phai { get; set; }
        public string NgaySinh { get; set; }
        public string NoiSinh { get; set; }
        public int? KhoaId { get; set; }
        public ICollection<KetQua> ketQuas { get; set; }
    }
}
