using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.StudentManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.Module.StudentManagenent
{
    public class StudentManagementAppService : QLSVAppServiceBase
    {
        private readonly IRepository<Student, long> _studentRepository;
        public StudentManagementAppService(IRepository<Student, long> studentRepository)
        {
            _studentRepository = studentRepository;
        }
        public async Task AddAsync(StudentDto input)
        {
            var student = new Student
            {
                MaSV = input.MaSV,
                HoSV = input.HoSV,
                TenSV = input.TenSV,
                Phai = input.Phai,
                NgaySinh = input.NgaySinh,
                NoiSinh = input.NoiSinh,
                MaKhoa = input.MaKhoa,
                HocBong = input.HocBong,
            };
            await _studentRepository.InsertAsync(student);
        }
        public async Task DeleteStudentAsync(int MaSV)
        {
            await _studentRepository.DeleteAsync(MaSV);
        }

        public async Task UpdateStudentAsync(StudentDto input)
        {
            var query = await _studentRepository.FirstOrDefaultAsync(e => e.MaSV == input.MaSV);
            query.HoSV = input.HoSV;
            query.TenSV = input.TenSV;
            query.Phai = input.Phai;
            query.NgaySinh = input.NgaySinh;
            query.NoiSinh = input.NoiSinh;
            query.MaKhoa = input.MaKhoa;
            query.HocBong = input.HocBong;
            await _studentRepository.UpdateAsync(query);
        }

    }
}
