using Abp.Domain.Repositories;
using QLSV.DbEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.StudentManagenent.Dto
{
    public class GetStudent
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Age { get; set; }
        public string Phai { get; set; }
        public string NgaySinh { get; set; }
        public int? QueId { get; set; }
        public string TenQue { get; set; }
        public int? LopId { get; set; }
        public string TenLop { get; set; }
    }
}
