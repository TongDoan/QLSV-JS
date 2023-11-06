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
    public class SearchStudent:QLSVAppServiceBase
    {
        private readonly IRepository<Student> _studentRepository;
        private readonly IRepository<Lop> _lop;
        private readonly IRepository<Que> _que;
        public SearchStudent(IRepository<Student> studentRepository, IRepository<Lop> lop,
            IRepository<Que> que)
        {
            _studentRepository = studentRepository;
            _lop = lop;
            _que = que;
        }
        public async Task<List<GetStudent>> GetSearchFillterStudent(SearchStudentDto input)
        {
            var lst = new List<GetStudent>();
            if (input.Name!=null && input.Phai!=null && input.Que!=null && input.Lop != null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 =lstst.Where(p=>p.Name.ToLower().Contains(input.Name.ToLower()) && p.Phai==input.Phai
                && p.LopId==lstlop.Id && p.QueId==lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name != null && input.Phai == null && input.Que != null && input.Lop != null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower())
                && p.LopId == lstlop.Id && p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
             if (input.Name != null && input.Phai != null && input.Lop != null && input.Que == null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
               
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower()) && p.Phai == input.Phai
                && p.LopId == lstlop.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
             if (input.Name != null && input.Phai != null && input.Que != null && input.Lop== null)
            {
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower()) && p.Phai == input.Phai
                 && p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
             if (input.Name != null && input.Phai != null && input.Que == null && input.Lop == null)
            {
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower()) && p.Phai == input.Phai
                );
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
             if (input.Name != null && input.Que != null && input.Phai == null && input.Lop == null)
            {
                
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower()) && p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name != null && input.Lop != null && input.Phai == null && input.Que == null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower()) && p.LopId == lstlop.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name !=null && input.Phai == null && input.Que == null && input.Lop == null)
            {
                
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Name.ToLower().Contains(input.Name.ToLower()));
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai != null && input.Que != null && input.Lop != null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p =>p.Phai == input.Phai
                && p.LopId == lstlop.Id && p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai != null && input.Que == null && input.Lop != null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
               
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Phai == input.Phai
                && p.LopId == lstlop.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai != null && input.Que != null && input.Lop== null)
            {
                
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Phai == input.Phai
                && p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai != null && input.Que == null && input.Lop == null)
            {
               
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.Phai == input.Phai
                );
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai == null && input.Que != null && input.Lop != null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.LopId == lstlop.Id && p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai == null && input.Que != null && input.Lop == null)
            {
               
                var lstque = await _que.FirstOrDefaultAsync(e => e.TenQue == input.Que);
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p =>p.QueId == lstque.Id);
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai == null && input.Que == null && input.Lop != null)
            {
                var lstlop = await _lop.FirstOrDefaultAsync(e => e.TenLop == input.Lop);
               
                var lstst = await _studentRepository.GetAllListAsync();
                var lstst1 = lstst.Where(p => p.LopId == lstlop.Id );
                foreach (var i in lstst1)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            if (input.Name == null && input.Phai == null && input.Que == null && input.Lop == null)
            {

                var lstst = await _studentRepository.GetAllListAsync();
               
                foreach (var i in lstst)
                {
                    var lstlop1 = await _lop.FirstOrDefaultAsync(e => e.Id == i.LopId);
                    var lstque1 = await _que.FirstOrDefaultAsync(e => e.Id == i.QueId);
                    var dto = new GetStudent
                    {
                        Id = i.Id,
                        Name = i.Name,
                        Age = i.Age,
                        Phai = i.Phai,
                        NgaySinh = i.NgaySinh,
                        QueId = i.QueId,
                        TenQue = lstque1.TenQue,
                        LopId = i.LopId,
                        TenLop = lstlop1.TenLop
                    };
                    lst.Add(dto);
                }
            }
            return lst;
        }
           
    }
}
