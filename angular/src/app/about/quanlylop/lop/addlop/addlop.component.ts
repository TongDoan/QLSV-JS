import { ChangeDetectorRef, Component } from "@angular/core";
import { FormBuilder, FormGroup, Validators } from "@angular/forms";
import { ActivatedRoute, Params } from "@angular/router";
import {
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
  selector: "app-addlop",
  templateUrl: "./addlop.component.html",
  styleUrls: ["./addlop.component.css"],
})
export class AddLopComponent {
  idlop: number;

  listkhoa: GetAllKhoa[];
  formUpdateData: LopDto = new LopDto();
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

  add() {
    this.formUpdateData.tenLop = this.formSuaLop.value.name;
    this.formUpdateData.khoaId = this.formSuaLop.value.khoa?.id;
    this.lopservice.add(this.formUpdateData).subscribe((result) => {
      this.cd.detectChanges();
    });
  }
}
