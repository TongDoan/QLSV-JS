using Abp.Domain.Repositories;
using Microsoft.AspNetCore.Mvc;
using QLSV.DbEntities;
using QLSV.Module.StudentManagenent.Dto;
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
        private readonly IRepository<Lop> _lop;
        private readonly IRepository<Que> _que;
        public StudentManagementAppService(IRepository<Student> studentRepository, IRepository<Lop> lop,
            IRepository<Que> que)
        {
            _studentRepository = studentRepository;
            _lop = lop;
            _que = que;
        }
      
        public async Task<List<GetStudent>> GetAllStudent()
        {
            var lstst = await _studentRepository.GetAllListAsync();
            var lst = new List<GetStudent>();

            foreach (var i in lstst)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                var lstque = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                var dto = new GetStudent
                {
                    Id = i.Id,
                    Name=i.Name,
                    Age=i.Age,
                    Phai=i.Phai,
                    NgaySinh=i.NgaySinh,
                    QueId=i.QueId,
                    TenQue=lstque.TenQue,
                    LopId=i.LopId,    
                    TenLop=lstlop.TenLop
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
                Phai = input.Phai,
                NgaySinh= input.NgaySinh,
                QueId= input.QueId,
                LopId= input.LopId
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
            query.Phai = input.Phai;
            query.NgaySinh = input.NgaySinh;
            query.QueId = input.QueId;
            query.LopId = input.LopId;
            await _studentRepository.UpdateAsync(query);
        }

    }

}
