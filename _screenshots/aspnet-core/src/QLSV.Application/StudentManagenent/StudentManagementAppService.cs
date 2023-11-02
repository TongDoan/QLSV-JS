using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.StudentManagenent.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLSV.StudentManagenent
{
    public class StudentManagementAppService:QLSVAppServiceBase
    {
        private readonly IRepository<Student> _studentRepository;
        private readonly IRepository<Khoa> _khoa;
        public StudentManagementAppService(IRepository<Student> studentRepository, IRepository<Khoa> khoa)
        {
            _studentRepository = studentRepository;
            _khoa = khoa;
        }
        public async Task<List<GetStudent>> GetAllStudent()
        {
            var lstst = await _studentRepository.GetAllListAsync();
            var lst = new List<GetStudent>();

            foreach (var i in lstst)
            {
                var lstkhoa = await _khoa.FirstOrDefaultAsync(e => e.Id == i.KhoaId);
                
                var dto = new GetStudent
                {
                    Id = i.Id,
                    Name=i.Name,
                    Age=i.Age,
                    Class=i.Class,
                    Phai=i.Phai,
                    NgaySinh=i.NgaySinh,
                    NoiSinh=i.NoiSinh,
                    KhoaId=i.KhoaId,    
                    TenKhoa=lstkhoa.TenKhoa
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(StudentDto input)
        {
            var student = new Student
            {
                Name = input.Name,
                Age = input.Age,
                Class = input.Class,
                Phai = input.Phai,
                NgaySinh= input.NgaySinh,
                NoiSinh= input.NoiSinh,
                KhoaId= input.KhoaId
            };
            await _studentRepository.InsertAsync(student);
        }

        public async Task DeleteStudentAsync(int id)
        {
            await _studentRepository.DeleteAsync(id);
        }

        public async Task UpdateStudentAsync(int id,StudentDto input)
        {
            var query = await _studentRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.Name = input.Name;
            query.Age = input.Age;
            query.Class = input.Class;
            query.Phai = input.Phai;
            query.NgaySinh = input.NgaySinh;
            query.NoiSinh = input.NoiSinh;
            query.KhoaId = input.KhoaId;
            await _studentRepository.UpdateAsync(query);
        }

    }

}
