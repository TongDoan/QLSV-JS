using Abp.Domain.Repositories;
using Microsoft.AspNetCore.Mvc;
using QLSV.DbEntities;
using QLSV.Module.KhoaManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.KhoaManagenent
{
    public class KhoaManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<Khoa> _khoaRepository;
        public KhoaManagementAppService(IRepository<Khoa> khoaRepository)
        {
            _khoaRepository = khoaRepository;
        }
  
        public async Task<List<GetAllKhoa>> GetAllKhoaHoc()
        {
            var lstk = await _khoaRepository.GetAllListAsync();
            var lst = new List<GetAllKhoa>();

            foreach (var i in lstk)
            {
                var dto = new GetAllKhoa
                {
                    Id = i.Id,
                    TenKhoa = i.TenKhoa
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(KhoaDto input)
        {
            var khoa = new Khoa
            {
                TenKhoa = input.TenKhoa
            };
            await _khoaRepository.InsertAsync(khoa);
        }

        public async Task DeleteKhoaAsync(int id)
        {
            await _khoaRepository.DeleteAsync(id);
        }

        public async Task UpdatekhoaAsync(int id, KhoaDto input)
        {
            var query = await _khoaRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.TenKhoa = input.TenKhoa;
            await _khoaRepository.UpdateAsync(query);
        }

    }
}

