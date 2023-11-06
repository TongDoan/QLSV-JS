using Abp.Domain.Repositories;
using Microsoft.AspNetCore.Mvc.RazorPages;
using QLSV.DbEntities;
using QLSV.Module.GiaoVienManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Cache;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace QLSV.Module.GiaoVienManagenent
{
    public class GiaoVienManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<GiaoVien> _giaovienRepository;
        private readonly IRepository<Khoa> _khoa;
        public GiaoVienManagementAppService(IRepository<GiaoVien> giaovienRepository, IRepository<Khoa> khoa)
        {
            _giaovienRepository = giaovienRepository;
            _khoa = khoa;
        }
        public async Task<List<GetGiaoVien>> GetAllGiaoVien()
        {
            var lstgv = await _giaovienRepository.GetAllListAsync();
            var lst = new List<GetGiaoVien>();

            foreach (var i in lstgv)
            {
                var lstkhoa = await _khoa.FirstOrDefaultAsync(e => e.Id == i.KhoaId);
                var dto = new GetGiaoVien
                {
                    Id=i.Id,
                    Name=i.Name,
                    Age=i.Age,
                    Phai=i.Phai,
                    NgaySinh=i.NgaySinh,
                    KhoaId=i.KhoaId,
                    TenKhoa=lstkhoa.TenKhoa
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(GiaoVienDto input)
        {
            var giaovien = new GiaoVien
            {
                Name = input.Name,
                Age = input.Age,
                Phai = input.Phai,
                NgaySinh = input.NgaySinh,
                KhoaId = input.KhoaId,
            };
            await _giaovienRepository.InsertAsync(giaovien);
        }

        public async Task DeleteGiaoVienAsync(int id)
        {
            await _giaovienRepository.DeleteAsync(id);
        }

        public async Task UpdateGiaoVienAsync(int id, GiaoVienDto input)
        {
            var query = await _giaovienRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.Name = input.Name;
            query.Age = input.Age;
            query.Phai = input.Phai;
            query.NgaySinh = input.NgaySinh;
            query.KhoaId = input.KhoaId;
            await _giaovienRepository.UpdateAsync(query);
        }
    }
}

