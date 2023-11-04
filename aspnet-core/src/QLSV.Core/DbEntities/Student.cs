using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class Student :FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set; }
        public string Name { get; set; } //loc
        public int Age { get; set; }
        public string Phai { get; set; } //loc
        public string NgaySinh { get; set; }
        public int? QueId { get; set; } //loc
        public int? LopId { get; set; } //loc
        public ICollection<KetQua> ketQuas { get; set; }
    }
}
