using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.LopManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.LopManagenent
{
    public class LopManagementAppService: QLSVAppServiceBase
    {
        private readonly IRepository<Lop> _lopRepository;
        private readonly IRepository<Khoa> _khoa;
        private readonly IRepository<Student> _student;
        private readonly IRepository<KetQua> _ketqua;
        private readonly IRepository<TongKet> _tongket;
        public LopManagementAppService(IRepository<Lop> lopRepository, IRepository<Khoa> khoa,
            IRepository<Student> student, IRepository<KetQua> ketqua,
            IRepository<TongKet> tongket)
        {
            _lopRepository = lopRepository;
            _khoa = khoa;
            _student = student;
            _ketqua = ketqua;
            _tongket= tongket;
        }
        public async Task<GetLop> GetLopById(int id)
        {
            var lstst = await _lopRepository.FirstOrDefaultAsync(e => e.Id == id);
           
                var lstkhoa = await _khoa.FirstOrDefaultAsync(e => e.Id == lstst.KhoaId);
                var dto = new GetLop
                {
                    Id = lstst.Id,
                    KhoaId = lstst.KhoaId,
                    TenKhoa = lstkhoa.TenKhoa,
                    TenLop = lstst.TenLop
                };
              
            return dto;

        }
        public async Task<List<GetLop>> GetAllLop()
        {
            var lstst = await _lopRepository.GetAllListAsync();
            var lst = new List<GetLop>();

            foreach (var i in lstst)
            {
                var lstkhoa = await _khoa.FirstOrDefaultAsync(e => e.Id == i.KhoaId);
                var dto = new GetLop
                {
                    Id = i.Id,
                    KhoaId= i.KhoaId,
                    TenKhoa=lstkhoa.TenKhoa,
                    TenLop=i.TenLop
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(LopDto input)
        {
            var lop = new Lop
            {
                KhoaId= input.KhoaId,
                TenLop=input.TenLop
            };
            await _lopRepository.InsertAsync(lop);
        }

        public async Task DeleteLopAsync(int id)
        {
            var lstst = await _student.GetAllListAsync();
            var lstst1 = lstst.Where(p => p.LopId == id);
            foreach (var e in lstst1)
            {
                var lstkq = await _ketqua.GetAllListAsync();
                var lstkq1 = lstkq.Where(p => p.StudentId == e.Id);
                foreach (var i in lstkq1)
                {
                    await _ketqua.DeleteAsync(i.Id);
                }
                var lsttk = await _tongket.GetAllListAsync();
                var lsttk1 = lsttk.Where(p => p.StudentId == e.Id);
                foreach (var i in lsttk1)
                {
                    await _tongket.DeleteAsync(i.Id);
                }
                await _student.DeleteAsync(e.Id);
            }
            await _lopRepository.DeleteAsync(id);
        }

        public async Task UpdateLopAsync(int id, LopDto input)
        {
            var query = await _lopRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.KhoaId= input.KhoaId;
            query.TenLop= input.TenLop;
            await _lopRepository.UpdateAsync(query);
        }
    }
}
