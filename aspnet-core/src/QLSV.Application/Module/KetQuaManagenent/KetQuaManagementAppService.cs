using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.KetQuaManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace QLSV.Module.KetQuaManagenent
{
    public class KetQuaManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<KetQua> _ketquaRepository;
        private readonly IRepository<Student> _student;
        private readonly IRepository<MonHoc> _monhoc;
        private readonly IRepository<GiaoVien> _giaovien;
        public KetQuaManagementAppService(IRepository<KetQua> ketquaRepository, IRepository<Student> student
            , IRepository<MonHoc> monhoc, IRepository<GiaoVien> giaovien)
        {
            _ketquaRepository = ketquaRepository;
            _student = student;
            _monhoc = monhoc;
            _giaovien = giaovien;
        }
        public async Task<List<GetKetQua>> GetKetQuaStudent(int id)
        {
            var lstkq = await _ketquaRepository.GetAllListAsync();
            var lst = new List<GetKetQua>();
            var lstkq1 = lstkq.Where(p => p.StudentId == id);
            if (id > 0)
            {
                foreach (var i in lstkq1)
                {
                    var lstudent = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                    var lstgv = await _giaovien.FirstOrDefaultAsync(e => e.Id == i.GiaoVienId);
                    var dto = new GetKetQua
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstudent.Name,
                        MonHocId = i.MonHocId,
                        TenMonHoc = lstmonhoc.TenMonHoc,
                        GiaoVienId= i.GiaoVienId,
                        TenGiaoVien=lstgv.Name,
                        DiemQuaTrinh = i.DiemQuaTrinh,
                        DiemTongKet = i.DiemTongKet,
                        DiemCuoiKy = i.DiemCuoiKy,
                        Hoc_ky = i.Hoc_ky,
                        Nam_hoc = i.Nam_hoc,
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
                    var lstgv = await _giaovien.FirstOrDefaultAsync(e => e.Id == i.GiaoVienId);
                    var dto = new GetKetQua
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstudent.Name,
                        MonHocId = i.MonHocId,
                        TenMonHoc = lstmonhoc.TenMonHoc,
                        GiaoVienId = i.GiaoVienId,
                        TenGiaoVien = lstgv.Name,
                        DiemQuaTrinh = i.DiemQuaTrinh,
                        DiemTongKet = i.DiemTongKet,
                        DiemCuoiKy = i.DiemCuoiKy,
                        Hoc_ky = i.Hoc_ky,
                        Nam_hoc = i.Nam_hoc,
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
                var lstgv = await _giaovien.FirstOrDefaultAsync(e => e.Id == i.GiaoVienId);
                var dto = new GetKetQua
                {
                    Id = i.Id,
                    StudentId = i.StudentId,
                    Name = lstudent.Name,
                    MonHocId = i.MonHocId,
                    TenMonHoc = lstmonhoc.TenMonHoc,
                    GiaoVienId = i.GiaoVienId,
                    TenGiaoVien = lstgv.Name,
                    DiemQuaTrinh = i.DiemQuaTrinh,
                    DiemTongKet = i.DiemTongKet,
                    DiemCuoiKy = i.DiemCuoiKy,
                    Hoc_ky = i.Hoc_ky,
                    Nam_hoc = i.Nam_hoc,
                    TinhTrang = i.TinhTrang
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(KetQuaDto input)
        {
            double DiemTong = 0;
            var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == input.MonHocId);
            if (input.DiemQuaTrinh >= 0 && input.DiemCuoiKy >= 0)
            {
                if (lstmonhoc.SoTinChi >= 3)
                {
                    DiemTong = input.DiemQuaTrinh * 0.4 + input.DiemCuoiKy * 0.6;
                }
                else
                {
                    DiemTong = (input.DiemQuaTrinh + input.DiemCuoiKy) / 2;
                }
            }
            var ketqua = new KetQua
            {
                StudentId = input.StudentId,
                MonHocId = input.MonHocId,
                GiaoVienId= input.GiaoVienId,
                DiemQuaTrinh = input.DiemQuaTrinh,
                DiemCuoiKy = input.DiemCuoiKy,
                DiemTongKet = DiemTong,
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
            double DiemTong=0;
            var query = await _ketquaRepository.FirstOrDefaultAsync(e => e.Id == id);
            var lstmonhoc = await _monhoc.FirstOrDefaultAsync(e => e.Id == input.MonHocId);
            if (input.DiemQuaTrinh >= 0 && input.DiemCuoiKy >= 0)
            {
                if (lstmonhoc.SoTinChi >= 3)
                {
                    DiemTong = input.DiemQuaTrinh * 0.4 + input.DiemCuoiKy * 0.6;
                }
                else
                {
                    DiemTong = (input.DiemQuaTrinh + input.DiemCuoiKy) / 2;
                }
            }
           

            query.StudentId = input.StudentId;
            query.MonHocId = input.MonHocId;
            query.GiaoVienId= input.GiaoVienId;
            query.DiemQuaTrinh = input.DiemQuaTrinh;
            query.DiemCuoiKy= input.DiemCuoiKy;
            query.DiemTongKet = DiemTong;
            query.Hoc_ky= input.Hoc_ky;
            query.Nam_hoc= input.Nam_hoc;
            query.TinhTrang = input.TinhTrang;
            await _ketquaRepository.UpdateAsync(query);
        
}
    }
}

