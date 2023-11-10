using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.KetQuaManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.KetQuaManagenent
{
    public class KetQuaManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<KetQua> _ketquaRepository;
        private readonly IRepository<Student> _student;
        private readonly IRepository<MonHoc> _monhoc;
        public KetQuaManagementAppService(IRepository<KetQua> ketquaRepository, IRepository<Student> student
            , IRepository<MonHoc> monhoc)
        {
            _ketquaRepository = ketquaRepository;
            _student = student;
            _monhoc = monhoc;
        }
        public async Task<List<GetKetQua>> GetKetQuaStudent(int id)
        {
            var lstkq = await _ketquaRepository.GetAllListAsync();
            var lst = new List<GetKetQua>();
            var lstkq1=lstkq.Where(p=>p.StudentId==id);
            if (id >0)
            {
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
            else
            {
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
            
            return lst;

        }
        public async Task<List<GetKetQua>> GetAllKetQua()
        {
            var lstkq = await _ketquaRepository.GetAllListAsync();
            var lst = new List<GetKetQua>();

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
            return lst;

        }
        public async Task AddAsync(KetQuaDto input)
        {
            bool ktr = true;
            var ketqua = new KetQua
            {
                StudentId = input.StudentId,
                MonHocId = input.MonHocId,
                LanThi = input.LanThi,
                Diem = input.Diem,
                TinhTrang = input.TinhTrang
            };
            var lstkq = await _ketquaRepository.GetAllListAsync();
            foreach (var i in lstkq)
            {
                if (i.StudentId == ketqua.StudentId && i.MonHocId == ketqua.MonHocId
                    && i.LanThi == ketqua.LanThi)
                {
                    ktr = false;
                    break;
                }
            }
            double x = Math.Truncate(DiemTong * 100) / 100;
            
            var ketqua = new KetQua
            {
                StudentId = input.StudentId,
                MonHocId = input.MonHocId,
                GiaoVienId= input.GiaoVienId,
                DiemQuaTrinh = input.DiemQuaTrinh,
                DiemCuoiKy = input.DiemCuoiKy,
                DiemTongKet = x,
                Hoc_ky = input.Hoc_ky,
                Nam_hoc = input.Nam_hoc,
                TinhTrang = input.TinhTrang
            };
            await _ketquaRepository.InsertAsync(ketqua);
            
        }

        public async Task DeleteKetQuaAsync(int id)
        {
            await _ketquaRepository.DeleteAsync(id);
        }

        public async Task UpdateKetQuaAsync(int id, KetQuaDto input)
        {
            var query = await _ketquaRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.StudentId = input.StudentId;
            query.MonHocId = input.MonHocId;
            query.LanThi = input.LanThi;
            query.Diem = input.Diem;
            query.TinhTrang = input.TinhTrang;
            await _ketquaRepository.UpdateAsync(query);
        }

    }
}

