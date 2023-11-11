using Abp.Domain.Repositories;
using QLSV.DbEntities;
using QLSV.Module.TongKetManagement.Dto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;

namespace QLSV.Module.TongKetManagement
{
    public class TongKetManagement : QLSVAppServiceBase
    {
        private readonly IRepository<TongKet> _tongketRepository;
        private readonly IRepository<KetQua> _ketqua;
        private readonly IRepository<Student> _student;
        private readonly IRepository<MonHoc> _monhoc;
        public TongKetManagement(IRepository<TongKet> tongketRepository, 
            IRepository<KetQua> ketqua,
            IRepository<Student> student,
            IRepository<MonHoc> monhoc)
        {
            _tongketRepository = tongketRepository;
            _ketqua = ketqua;
            _student = student;
            _monhoc = monhoc;
        }
        public async Task<GetTongKet> GetTongKetById(int id)
        {
            var lsttk = await _tongketRepository.FirstOrDefaultAsync(e => e.Id == id);
                    var lstst = await _student.FirstOrDefaultAsync(e => e.Id == lsttk.StudentId);
                    var dto = new GetTongKet
                    {
                        Id = lsttk.Id,
                        StudentId = lsttk.StudentId,
                        Name = lstst.Name,
                        Diem_TongKet = lsttk.Diem_TongKet,
                        Xep_loai = lsttk.Xep_loai,
                      
                    };
            
            return dto;

        }
        public async Task<List<GetTongKet>> GetTongKetByStudentId(int Studentid)
        {
            var lsttk = await _tongketRepository.GetAllListAsync();
            var lst = new List<GetTongKet>();
            var lsttk1= lsttk.Where(p=>p.StudentId==Studentid);
            if (Studentid > 0)
            {
                foreach (var i in lsttk1)
                {
                    double tong = 0;
                    double tongtin = 0;
                    double tk = 0;
                    var query = await _tongketRepository.FirstOrDefaultAsync(e => e.Id == i.Id);
                    var lstkq = await _ketqua.GetAllListAsync();
                    var lstkq1 = lstkq.Where(p => p.StudentId
                    == i.StudentId).ToList();
                    foreach (var a in lstkq1)
                    {
                        var mh = await _monhoc.FirstOrDefaultAsync(e => e.Id == a.MonHocId);
                        tong += a.DiemTongKet * mh.SoTinChi;
                        tongtin += mh.SoTinChi;
                    }
                    if (tongtin > 0)
                    {
                        tk = tong / tongtin;
                    }
                    double x = Math.Truncate(tk * 100) / 100;
                    String xeploai = "";
                    if (8.5 <= x && x <= 10)
                    {
                        xeploai = "A";
                    }
                    else if (8 <= x && x <= 8.4)
                    {
                        xeploai = "B+";
                    }
                    else if (7 <= x && x <= 7.9)
                    {
                        xeploai = "B";
                    }
                    else if (6.5 <= x && x <= 6.9)
                    {
                        xeploai = "C+";
                    }
                    else if (5.5 <= x && x <= 6.4)
                    {
                        xeploai = "C";
                    }
                    else if (5 <= x && x <= 5.4)
                    {
                        xeploai = "D+";
                    }
                    else if (4 <= x && x <= 4.9)
                    {
                        xeploai = "D";
                    }
                    else if (x < 4)
                    {
                        xeploai = "F";
                    }
                    query.Diem_TongKet = x;
                    query.Xep_loai=xeploai;
                    await _tongketRepository.UpdateAsync(query);
                    var lstst = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var dto = new GetTongKet
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstst.Name,
                        Diem_TongKet = i.Diem_TongKet,
                        Xep_loai = i.Xep_loai,
                    };
                    lst.Add(dto);
                }
           
            }
            else
            {
                foreach (var i in lsttk)
                {
                    var lstst = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                    var dto = new GetTongKet
                    {
                        Id = i.Id,
                        StudentId = i.StudentId,
                        Name = lstst.Name,
                        Diem_TongKet = i.Diem_TongKet,
                        Xep_loai = i.Xep_loai,
                       
                    };
                    lst.Add(dto);
                }
            }
            return lst;

        }
        public async Task<List<GetTongKet>> GetAllTongKet()
        {
            var lsttk = await _tongketRepository.GetAllListAsync();
            var lst = new List<GetTongKet>();

            foreach (var i in lsttk)
            {
                double tong = 0;
                double tongtin = 0;
                double tk = 0;
                var query = await _tongketRepository.FirstOrDefaultAsync(e => e.Id == i.Id);
                var lstkq = await _ketqua.GetAllListAsync();
                var lstkq1 = lstkq.Where(p => p.StudentId
                == i.StudentId).ToList();
                foreach (var a in lstkq1)
                {
                    var mh = await _monhoc.FirstOrDefaultAsync(e => e.Id == a.MonHocId);
                    tong += a.DiemTongKet * mh.SoTinChi;
                    tongtin += mh.SoTinChi;
                }
                if (tongtin > 0)
                {
                    tk = tong / tongtin;
                }
                double x = Math.Truncate(tk * 100) / 100;
                String xeploai = "";
                if (8.5 <= x && x <= 10)
                {
                    xeploai = "A";
                }
                else if (8 <= x && x <= 8.4)
                {
                    xeploai = "B+";
                }
                else if (7 <= x && x <= 7.9)
                {
                    xeploai = "B";
                }
                else if (6.5 <= x && x <= 6.9)
                {
                    xeploai = "C+";
                }
                else if (5.5 <= x && x <= 6.4)
                {
                    xeploai = "C";
                }
                else if (5 <= x && x <= 5.4)
                {
                    xeploai = "D+";
                }
                else if (4 <= x && x <= 4.9)
                {
                    xeploai = "D";
                }
                else if (x < 4)
                {
                    xeploai = "F";
                }
                query.Diem_TongKet= x;
                query.Xep_loai= xeploai;
                await _tongketRepository.UpdateAsync(query);
                var lstst = await _student.FirstOrDefaultAsync(e => e.Id == i.StudentId);
                var dto = new GetTongKet
                {
                   Id=i.Id,
                   StudentId=i.StudentId,
                   Name= lstst.Name,
                   Diem_TongKet=i.Diem_TongKet,
                   Xep_loai=i.Xep_loai,
                  
                };
                lst.Add(dto);
            }
            return lst;

        }
        public async Task AddAsync(TongKetDto input)
        {
            double tong = 0;
            double tongtin = 0;
            double tk = 0;

            var lstkq= await _ketqua.GetAllListAsync();
            var lstkq1=lstkq.Where(p=>p.StudentId
            ==input.StudentId ).ToList();
            foreach(var i in lstkq1)
            {
                var mh = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                tong += i.DiemTongKet * mh.SoTinChi;
                tongtin += mh.SoTinChi;
            }
            if (tongtin > 0)
            {
                tk=tong/tongtin;
            }
            double x = Math.Truncate(tk * 100) / 100;
            String xeploai = "";
            if (8.5 <= x && x <= 10)
            {
                xeploai = "A";
            }
            else if (8<=x && x <= 8.4) 
            {
                xeploai = "B+";
            }
            else if (7<=x && x <= 7.9)
            {
                xeploai = "B";
            }
            else if (6.5 <= x && x <= 6.9)
            {
                xeploai = "C+";
            }
            else if (5.5 <= x && x <= 6.4)
            {
                xeploai = "C";
            }
            else if (5 <= x && x <= 5.4)
            {
                xeploai = "D+";
            }
            else if (4 <= x && x <= 4.9)
            {
                xeploai = "D";
            }
            else if (x <4)
            {
                xeploai = "F";
            }
            var tongket = new TongKet
            {
                StudentId= input.StudentId,
                Diem_TongKet=x,
                Xep_loai=xeploai,
               
            };
            await _tongketRepository.InsertAsync(tongket);
        }
        
        public async Task DeleteTongKetAsync(int id)
        {
            await _tongketRepository.DeleteAsync(id);
        }

        public async Task UpdateTongKetAsync(int id, TongKetDto input)
        {
            double tong = 0;
            double tongtin = 0;
            double tk = 0;
            var lstkq = await _ketqua.GetAllListAsync();
            var lstkq1 = lstkq.Where(p => p.StudentId
            == input.StudentId).ToList();
            foreach (var i in lstkq1)
            {
                var mh = await _monhoc.FirstOrDefaultAsync(e => e.Id == i.MonHocId);
                tong += i.DiemTongKet * mh.SoTinChi;
                tongtin += mh.SoTinChi;
            }
            if (tongtin > 0)
            {
                tk = tong / tongtin;
            }
            double x = Math.Truncate(tk * 100) / 100;
            String xeploai = "";
            if (8.5 <= x && x <= 10)
            {
                xeploai = "A";
            }
            else if (8 <= x && x <= 8.4)
            {
                xeploai = "B+";
            }
            else if (7 <= x && x <= 7.9)
            {
                xeploai = "B";
            }
            else if (6.5 <= x && x <= 6.9)
            {
                xeploai = "C+";
            }
            else if (5.5 <= x && x <= 6.4)
            {
                xeploai = "C";
            }
            else if (5 <= x && x <= 5.4)
            {
                xeploai = "D+";
            }
            else if (4 <= x && x <= 4.9)
            {
                xeploai = "D";
            }
            else if (x < 4)
            {
                xeploai = "F";
            }
            var query = await _tongketRepository.FirstOrDefaultAsync(e => e.Id == id);
            query.StudentId = input.StudentId;
            query.Diem_TongKet = x;
            query.Xep_loai=xeploai;    
            await _tongketRepository.UpdateAsync(query);
        }
    }
}

