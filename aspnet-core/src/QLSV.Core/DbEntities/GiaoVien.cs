using Abp.Domain.Entities.Auditing;
using Abp.Domain.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class GiaoVien : FullAuditedEntity, IMayHaveTenant
    {
        public int? TenantId { get; set; }
        public string Name { get; set; } //loc
        public int Age { get; set; }
        public string Phai { get; set; } //loc
        public string NgaySinh { get; set; }
        public int? KhoaId { get; set; }
        public ICollection<KetQua> ketQuas { get; set; }
    }
}
