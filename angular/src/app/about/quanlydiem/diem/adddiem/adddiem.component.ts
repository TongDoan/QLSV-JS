import { ChangeDetectorRef, Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { ActivatedRoute, Params } from "@angular/router";
import {
  LopDto,
  GetAllKhoa,
  KetQuaManagementServiceProxy,
  GetKetQua,
  GetMonHoc,
  GetGiaoVien,
  MonHocManagementServiceProxy,
  GiaoVienManagementServiceProxy,
  KetQuaDto,
} from "@shared/service-proxies/service-proxies";
interface AutoCompleteCompleteEvent {
  originalEvent: Event;
  query: string;
}
@Component({
  selector: "app-adddiem",
  templateUrl: "./adddiem.component.html",
  styleUrls: ["./adddiem.component.css"],
})
export class AdddiemComponent {
  iddiem: number;

  listkhoa: GetAllKhoa[];
  listketqua: GetKetQua[];
  listmonhoc: GetMonHoc[];
  listgiaovien: GetGiaoVien[];

  diemselected: GetKetQua;

  ketquadataupdate: KetQuaDto = new KetQuaDto();

  formSuaDiem: FormGroup;
  formLocId: FormGroup;

  hockis: any[] = [
    { name: "1", key: "1" },
    { name: "2", key: "2" },
  ];
  constructor(
    private fb: FormBuilder,

    private ketquaservice: KetQuaManagementServiceProxy,
    private monhocservice: MonHocManagementServiceProxy,
    private giaovienservice: GiaoVienManagementServiceProxy,
    private cd: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.formSuaDiem = this.fb.group({
      masv: ["", Validators.required],
      mon: ["", Validators.required],
      giangvien: ["", Validators.required],
      diemquatrinh: ["", Validators.required],
      diemcuoiky: ["", Validators.required],
      selectedhocki: ["", Validators.required],
      namhoc: ["", Validators.required],
      tinhtrang: ["", Validators.required],
    });

    this.ketquaservice.getAllKetQua().subscribe((result) => {
      this.listketqua = result;
      this.cd.detectChanges();
    });

    this.monhocservice.getAllMonHoc().subscribe((result) => {
      this.listmonhoc = result;
      this.cd.detectChanges();
    });
    this.giaovienservice.getAllGiaoVien().subscribe((result) => {
      this.listgiaovien = result;
      this.cd.detectChanges();
    });
  }

  add() {
    debugger;
    this.ketquadataupdate.studentId = this.formSuaDiem.value.masv;
    this.ketquadataupdate.monHocId = this.formSuaDiem.value.mon.id;
    this.ketquadataupdate.giaoVienId = this.formSuaDiem.value.giangvien.id;
    this.ketquadataupdate.diemQuaTrinh = this.formSuaDiem.value.diemquatrinh;
    this.ketquadataupdate.diemCuoiKy = this.formSuaDiem.value.diemcuoiky;
    this.ketquadataupdate.hoc_ky = this.formSuaDiem.value.selectedhocki.key;
    this.ketquadataupdate.nam_hoc = this.formSuaDiem.value.namhoc;
    this.ketquadataupdate.tinhTrang = this.formSuaDiem.value.tinhtrang;
    this.ketquaservice.add(this.ketquadataupdate).subscribe((result) => {});
  }

  filterid() {
    this.ketquaservice
      .getKetQuaStudent(this.formLocId.value.masv)
      .subscribe((result) => {
        this.listketqua = result;
        console.log("finnish filter student id");
        this.cd.detectChanges();
      });
  }
}
