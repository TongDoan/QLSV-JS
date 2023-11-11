import { ChangeDetectorRef, Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import {
  KetQuaManagementServiceProxy,
  GetKetQua,
  TongKetManagementServiceProxy,
  GetTongKet,
} from "@shared/service-proxies/service-proxies";

@Component({
  selector: "app-quanlydiem",
  templateUrl: "./quanlydiem.component.html",
  styleUrls: ["./quanlydiem.component.css"],
})
export class QuanlydiemComponent {
  listketqua: GetKetQua[];
  tongketselected: GetTongKet[];
  formLocId: FormGroup;

  showTongKet = false;

  constructor(
    private ketquaservice: KetQuaManagementServiceProxy,
    private tongketservice: TongKetManagementServiceProxy,
    private cd: ChangeDetectorRef,
    private fb: FormBuilder
  ) {}

  ngOnInit(): void {
    this.ketquaservice.getAllKetQua().subscribe((result) => {
      this.listketqua = result;
    });
    this.formLocId = this.fb.group({
      id: ["", Validators.required],
    });
  }

  reload() {
    this.ketquaservice.getAllKetQua().subscribe((result) => {
      this.listketqua = result;
      this.cd.detectChanges();
    });
  }
  filterid() {
    this.ketquaservice
      .getKetQuaStudent(this.formLocId.value.id)
      .subscribe((result) => {
        this.listketqua = result;
        console.log("finnish filter student id");
        this.cd.detectChanges();
      });
    this.tongketservice
      .getTongKetByStudentId(this.formLocId.value.id)
      .subscribe((result) => {
        this.tongketselected = result;
        this.cd.detectChanges();
      });
    this.showTongKet = true;
  }
}
