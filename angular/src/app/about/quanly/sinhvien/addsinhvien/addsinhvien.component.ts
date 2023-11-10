import { ChangeDetectorRef, Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import {
  GetLop,
  GetQue,
  GetStudent,
  LopManagementServiceProxy,
  QueManagementServiceProxy,
  StudentDto,
  StudentManagementServiceProxy,
} from "@shared/service-proxies/service-proxies";
interface AutoCompleteCompleteEvent {
  originalEvent: Event;
  query: string;
}
@Component({
  selector: "app-addsinhvien",
  templateUrl: "./addsinhvien.component.html",
  styleUrls: ["./addsinhvien.component.css"],
})
export class AddsinhvienComponent {
  listque: GetQue[];
  listlop: GetLop[];

  formUpdateData: StudentDto = new StudentDto();

  filteredQue: GetQue[];
  filteredLop: GetLop[];
  filteredSinhVien: GetStudent[];

  gioitinhs: any[] = [
    { name: "Nam", key: "Nam" },
    { name: "Nữ", key: "Nữ" },
  ];

  formSuaSinhVien: FormGroup;

  constructor(
    private fb: FormBuilder,

    private studentservice: StudentManagementServiceProxy,
    private lopservice: LopManagementServiceProxy,
    private queservice: QueManagementServiceProxy,
    private cd: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.formSuaSinhVien = this.fb.group({
      name: ["", Validators.required],
      ngaysinh: ["", Validators.required],
      que: ["", Validators.required],
      lop: ["", Validators.required],
      selectedGioiTinh: ["", Validators.required],
    });
    this.queservice.getAllQue().subscribe((result) => {
      this.listque = result;
      this.cd.detectChanges();
    });

    this.lopservice.getAllLop().subscribe((result) => {
      this.listlop = result;
      this.cd.detectChanges();
    });
  }

  filterQue(event: AutoCompleteCompleteEvent) {
    const query = event.query;
    this.filteredQue = this.listque.filter(
      (item) => item.tenQue.toLowerCase().indexOf(query.toLowerCase()) === 0
    );
  }
  filterLop(event: AutoCompleteCompleteEvent) {
    const query = event.query;
    this.filteredLop = this.listlop.filter(
      (item) => item.tenLop.toLowerCase().indexOf(query.toLowerCase()) === 0
    );
  }
  convertDateToString(date: Date): string {
    const day = date.getDate().toString().padStart(2, "0");
    const month = (date.getMonth() + 1).toString().padStart(2, "0"); // January is 0!
    const year = date.getFullYear();

    return `${day}/${month}/${year}`;
  }

  add() {
    const ngaySinhString = this.convertDateToString(
      this.formSuaSinhVien.value.ngaysinh
    );

    this.formUpdateData.name = this.formSuaSinhVien.value.name;
    this.formUpdateData.ngaySinh = ngaySinhString;
    this.formUpdateData.queId = this.formSuaSinhVien.value.que?.id;
    this.formUpdateData.lopId = this.formSuaSinhVien.value.lop?.id;
    this.formUpdateData.age = 21;
    this.formUpdateData.phai = this.formSuaSinhVien.value.selectedGioiTinh?.key;

    this.studentservice.add(this.formUpdateData).subscribe((result) => {
      this.cd.detectChanges();
    });
  }
}
