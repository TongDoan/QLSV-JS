using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.TongKetManagement.Dto
{
    public class GetTongKet
    {
        public int Id { get; set; }
        public int? StudentId { get; set; }
        public string Name { get; set; }
        public double Diem_TongKet { get; set; }
        public string? Xep_loai { get; set; }
        public string Hoc_ky { get; set; }
        public string Nam_hoc { get; set; }
    }
}
