import { ChangeDetectorRef, Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { ActivatedRoute, Params } from "@angular/router";
import {
  GetLop,
  LopDto,
  LopManagementServiceProxy,
  KhoaManagementServiceProxy,
  GetAllKhoa,
} from "@shared/service-proxies/service-proxies";
interface AutoCompleteCompleteEvent {
  originalEvent: Event;
  query: string;
}
@Component({
  selector: "app-lop",
  templateUrl: "./lop.component.html",
  styleUrls: ["./lop.component.css"],
})
export class LopComponent {
  idlop: number;

  lopduocchon: GetLop[];
  listkhoa: GetAllKhoa[];

  formUpdateData: LopDto = new LopDto();
  lopSelected: GetLop;
  filteredKhoa: GetAllKhoa[];
  formSuaLop: FormGroup;

  constructor(
    private fb: FormBuilder,
    private route: ActivatedRoute,
    private lopservice: LopManagementServiceProxy,
    private khoaservice: KhoaManagementServiceProxy,
    private cd: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.route.params.subscribe((params: Params) => {
      this.idlop = +params["idlop"];
    });

    this.formSuaLop = this.fb.group({
      name: ["", Validators.required],
      khoa: ["", Validators.required],
    });
    this.lopservice.getLopById(this.idlop).subscribe((result) => {
      this.lopSelected = result;
    });
    this.khoaservice.getAllKhoaHoc().subscribe((result) => {
      this.listkhoa = result;
      this.cd.detectChanges();
    });
  }

  filterKhoa(event: AutoCompleteCompleteEvent) {
    const query = event.query;
    this.filteredKhoa = this.listkhoa.filter(
      (item) => item.tenKhoa.toLowerCase().indexOf(query.toLowerCase()) === 0
    );
  }

  update() {
    this.formUpdateData.tenLop = this.formSuaLop.value.name;
    this.formUpdateData.khoaId = this.formSuaLop.value.khoa?.id;
    this.lopservice
      .updateLop(this.idlop, this.formUpdateData)
      .subscribe((result) => {
        this.cd.detectChanges();
      });
  }

  add() {
    this.formUpdateData.tenLop = this.formSuaLop.value.name;
    this.formUpdateData.khoaId = this.formSuaLop.value.khoa?.id;
    this.lopservice.add(this.formUpdateData).subscribe((result) => {
      this.cd.detectChanges();
    });
  }

  delete() {
    this.lopservice.deleteLop(this.idlop).subscribe((result) => {});
    this.cd.detectChanges();
  }
}
