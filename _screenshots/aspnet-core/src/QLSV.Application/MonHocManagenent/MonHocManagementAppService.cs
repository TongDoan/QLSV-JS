using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.MonHocManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.MonHocManagenent
{
    public class MonHocManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<MonHoc> _monhocRepository;
        public MonHocManagementAppService(IRepository<MonHoc> monhocRepository)
        {
            _monhocRepository = monhocRepository;
        }
        public async Task<List<GetMonHoc>> GetAllMonHoc()
        {
            var lstmh = await _monhocRepository.GetAllListAsync();
            var lst = new List<GetMonHoc>();

            foreach (var i in lstmh)
            {
                var dto = new GetMonHoc
                {
                    Id = i.Id,
                    TenMonHoc = i.TenMonHoc,
                    SoTiet = i.SoTiet,
                    SoTinChi=i.SoTinChi,
                    GhiChu = i.GhiChu
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(MonHocDto input)
        {
            var monhoc = new MonHoc
            {
                TenMonHoc = input.TenMonHoc,
                SoTiet = input.SoTiet,
                SoTinChi=input.SoTinChi,
                GhiChu = input.GhiChu
            };
            await _monhocRepository.InsertAsync(monhoc);
        }

        public async Task DeleteMonHocAsync(int id)
        {
            await _monhocRepository.DeleteAsync(id);
        }

        public async Task UpdateMonHocAsync(int id, MonHocDto input)
        {
            var query = await _monhocRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.TenMonHoc = input.TenMonHoc;
            query.SoTiet = input.SoTiet;
            query.SoTinChi= input.SoTinChi;
            query.GhiChu = input.GhiChu;
            await _monhocRepository.UpdateAsync(query);
        }
    }
}
