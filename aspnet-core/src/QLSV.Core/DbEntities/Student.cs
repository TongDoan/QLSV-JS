using Abp.Domain.Entities;
using Abp.Domain.Entities.Auditing;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.DbEntities
{
    public class Student : FullAuditedEntity<long>, IMayHaveTenant
    {
        public int? TenantId { get; set; }
        public String MaSV { get; set; }
        public String HoSV { get; set; }
        public String TenSV { get; set; }
        public String Phai { get; set; }
        public DateTime NgaySinh { get; set; }
        public String NoiSinh { get; set; }

        public String MaKhoa { get; set; }
        public float HocBong { get; set; }

    }
}
