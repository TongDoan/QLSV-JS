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

@Component({
  selector: "app-diem",
  templateUrl: "./diem.component.html",
  styleUrls: ["./diem.component.css"],
})
export class DiemComponent {
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
    private route: ActivatedRoute,

    private ketquaservice: KetQuaManagementServiceProxy,
    private cd: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.route.params.subscribe((params: Params) => {
      this.iddiem = +params["iddiem"];
    });
    this.ketquaservice.getKetQuaById(this.iddiem).subscribe((result) => {
      this.diemselected = result;
      this.cd.detectChanges();
    });
    this.formSuaDiem = this.fb.group({
      diemquatrinh: ["", Validators.required],
      diemcuoiky: ["", Validators.required],
    });

    this.ketquaservice.getAllKetQua().subscribe((result) => {
      this.listketqua = result;
      this.cd.detectChanges();
    });
  }

  update() {
    this.ketquadataupdate.studentId = this.diemselected.studentId;
    this.ketquadataupdate.monHocId = this.diemselected.monHocId;
    this.ketquadataupdate.giaoVienId = this.diemselected.giaoVienId;
    this.ketquadataupdate.diemQuaTrinh = this.formSuaDiem.value.diemquatrinh;
    this.ketquadataupdate.diemCuoiKy = this.formSuaDiem.value.diemcuoiky;
    this.ketquadataupdate.hoc_ky = this.diemselected.hoc_ky;
    this.ketquadataupdate.nam_hoc = this.diemselected.nam_hoc;
    this.ketquadataupdate.tinhTrang = this.diemselected.tinhTrang;
    this.ketquaservice
      .updateKetQua(this.iddiem, this.ketquadataupdate)
      .subscribe((result) => {});
  }
  delete() {
    this.ketquaservice.deleteKetQua(this.iddiem).subscribe((result) => {});
  }
}
