using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.KetQuaManagenent.Dto;
using QLSV.Module.MonHocManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.KetQuaManagenent
{
    public class SearchKetQua : QLSVAppServiceBase
    {
        private readonly IRepository<KetQua> _ketquaRepository;
        private readonly IRepository<Student> _student;
        private readonly IRepository<MonHoc> _monhoc;
        public SearchKetQua(IRepository<KetQua> ketquaRepository, IRepository<Student> student
            , IRepository<MonHoc> monhoc)
        {
            _ketquaRepository = ketquaRepository;
            _student = student;
            _monhoc = monhoc;
        }
        public async Task<List<GetKetQua>> GetFillterKetQuaS(SearchKetQuaDto input)
        {
            
            var lst = new List<GetKetQua>();
            if(input.MonHoc != null && input.TinhTrang !=null)
            {
                var lstmh=await _monhoc.FirstOrDefaultAsync(e => e.TenMonHoc == input.MonHoc);
                var lstkq = await _ketquaRepository.GetAllListAsync();
                var lstkq1 = lstkq.Where(p =>p.MonHocId==lstmh.Id 
                && p.TinhTrang.ToLower().Contains(input.TinhTrang.ToLower()));

                foreach (var i in lstkq1)
                {
                    var lstudent = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                    var dto = new GetKetQua
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstudent.Name,
                        MonHocId = i.MonHocId,
                        TenMonHoc = lstmonhoc.TenMonHoc,
                        LanThi = i.LanThi,
                        Diem = i.Diem,
                        TinhTrang = i.TinhTrang
                    };
                    lst.Add(dto);
                }
            }
            if (input.MonHoc != null && input.TinhTrang == null)
            {
                var lstmh = await _monhoc.FirstOrDefaultAsync(e => e.TenMonHoc == input.MonHoc);
                var lstkq = await _ketquaRepository.GetAllListAsync();
                var lstkq1 = lstkq.Where(p => p.MonHocId == lstmh.Id
                );

                foreach (var i in lstkq1)
                {
                    var lstudent = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                    var dto = new GetKetQua
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstudent.Name,
                        MonHocId = i.MonHocId,
                        TenMonHoc = lstmonhoc.TenMonHoc,
                        LanThi = i.LanThi,
                        Diem = i.Diem,
                        TinhTrang = i.TinhTrang
                    };
                    lst.Add(dto);
                }
            }
            if (input.MonHoc == null && input.TinhTrang != null)
            {
                var lstkq = await _ketquaRepository.GetAllListAsync();
                var lstkq1 = lstkq.Where(p => p.TinhTrang.ToLower().Contains(input.TinhTrang.ToLower()));

                foreach (var i in lstkq1)
                {
                    var lstudent = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                    var dto = new GetKetQua
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstudent.Name,
                        MonHocId = i.MonHocId,
                        TenMonHoc = lstmonhoc.TenMonHoc,
                        LanThi = i.LanThi,
                        Diem = i.Diem,
                        TinhTrang = i.TinhTrang
                    };
                    lst.Add(dto);
                }
            }
            if (input.MonHoc == null && input.TinhTrang == null)
            {
                
                var lstkq = await _ketquaRepository.GetAllListAsync();
                foreach (var i in lstkq)
                {
                    var lstudent = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                    var dto = new GetKetQua
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstudent.Name,
                        MonHocId = i.MonHocId,
                        TenMonHoc = lstmonhoc.TenMonHoc,
                        LanThi = i.LanThi,
                        Diem = i.Diem,
                        TinhTrang = i.TinhTrang
                    };
                    lst.Add(dto);
                }
            }
            if (input.SapXep == 1)
            {
               lst=lst.OrderBy(p => p.Diem).ToList();
            }
            else if (input.SapXep == 2)
            {
                lst=lst.OrderByDescending(p => p.Diem).ToList();
            }
            else
            {
                lst=lst.OrderBy(p => p.Id).ToList();
            }
            return lst;

        }
    }
}
