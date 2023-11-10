import { ChangeDetectorRef, Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import {
  GetLop,
  GetQue,
  GetStudent,
  LopManagementServiceProxy,
  QueManagementServiceProxy,
  SearchStudentServiceProxy,
  StudentManagementServiceProxy,
} from "@shared/service-proxies/service-proxies";
interface AutoCompleteCompleteEvent {
  originalEvent: Event;
  query: string;
}
@Component({
  selector: "app-quanly",
  templateUrl: "./quanly.component.html",
  styleUrls: ["./quanly.component.css"],
})
export class QuanlyComponent {
  listsinhvien: GetStudent[];
  listque: GetQue[];
  listlop: GetLop[];

  listsinhvienfiltered: GetStudent[];

  filteredQue: GetQue[];
  filteredLop: GetLop[];
  filteredSinhVien: GetStudent[];

  gioitinhs: any[] = [
    { name: "Nam", key: "Nam" },
    { name: "Nữ", key: "Nữ" },
  ];

  FormTaoSinhVien: FormGroup;
  formLoc: FormGroup;

  constructor(
    private fb: FormBuilder,

    private studentservice: StudentManagementServiceProxy,
    private lopservice: LopManagementServiceProxy,
    private queservice: QueManagementServiceProxy,
    private searchstudentservice: SearchStudentServiceProxy,
    private cd: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.FormTaoSinhVien = this.fb.group({
      name: ["", Validators.required],
      hocbong: ["", Validators.required],
    });
    this.formLoc = this.fb.group({
      selectedSinhVien: ["", Validators.required],
      selectedQue: ["", Validators.required],
      selectedLop: ["", Validators.required],
      selectedGioiTinh: ["", Validators.required],
    });

    this.queservice.getAllQue().subscribe((result) => {
      this.listque = result;
      this.cd.detectChanges();
    });
    this.studentservice.getAllStudent().subscribe((result) => {
      this.listsinhvien = result;
      this.cd.detectChanges();
    });
    this.lopservice.getAllLop().subscribe((result) => {
      this.listlop = result;
      this.cd.detectChanges();
    });
  }

  reload() {
    this.studentservice.getAllStudent().subscribe((result) => {
      this.listsinhvien = result;
      this.cd.detectChanges();
    });
  }

  filterSinhVien(event: AutoCompleteCompleteEvent) {
    const query = event.query;
    this.filteredSinhVien = this.listsinhvien.filter(
      (item) => item.name.toLowerCase().indexOf(query.toLowerCase()) === 0
    );
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

  filter() {
    this.searchstudentservice
      .getSearchFillterStudent(
        this.formLoc.value.selectedSinhVien.name,
        this.formLoc.value.selectedGioiTinh.key,
        this.formLoc.value.selectedQue.tenQue,
        this.formLoc.value.selectedLop.tenLop
      )
      .subscribe((result) => {
        this.listsinhvien = result;
        this.cd.detectChanges();
      });
  }
}
