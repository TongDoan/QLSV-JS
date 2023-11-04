using Abp.Domain.Repositories;
using Microsoft.AspNetCore.Mvc;
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
        public LopManagementAppService(IRepository<Lop> lopRepository, IRepository<Khoa> khoa)
        {
            _lopRepository = lopRepository;
            _khoa = khoa;
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
