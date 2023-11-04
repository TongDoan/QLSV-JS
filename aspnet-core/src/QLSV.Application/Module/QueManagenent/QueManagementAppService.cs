using Abp.Domain.Repositories;
using Microsoft.AspNetCore.Mvc;
using QLSV.DbEntities;
using QLSV.Module.QueManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.QueManagenent
{
    public class QueManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<Que> _queRepository;
        public QueManagementAppService(IRepository<Que> queRepository)
        {
            _queRepository = queRepository;
        }
      
        public async Task<List<GetQue>> GetAllQue()
        {
            var lstmh = await _queRepository.GetAllListAsync();
            var lst = new List<GetQue>();

            foreach (var i in lstmh)
            {
                var dto = new GetQue
                {
                    Id = i.Id,
                    TenQue= i.TenQue,
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(QueDto input)
        {
            var que = new Que
            {
                TenQue= input.TenQue
            };
            await _queRepository.InsertAsync(que);
        }

        public async Task DeleteQueAsync(int id)
        {
            await _queRepository.DeleteAsync(id);
        }

        public async Task UpdateQueAsync(int id, QueDto input)
        {
            var query = await _queRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.TenQue= input.TenQue;
            await _queRepository.UpdateAsync(query);
        }
    }
}
