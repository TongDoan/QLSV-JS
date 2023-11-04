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
        public int LanThi { get; set;} 
        public double Diem { get; set;}//sap xep
        public string? TinhTrang { get; set;}//loc

    }
}
