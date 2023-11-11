import { ChangeDetectorRef, Component } from "@angular/core";

import {
  GetLop,
  GetQue,
  GetStudent,
  LopManagementServiceProxy,
} from "@shared/service-proxies/service-proxies";
interface AutoCompleteCompleteEvent {
  originalEvent: Event;
  query: string;
}
@Component({
  selector: "app-quanlylop",
  templateUrl: "./quanlylop.component.html",
  styleUrls: ["./quanlylop.component.css"],
})
export class QuanlylopComponent {
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

  constructor(
    private lopservice: LopManagementServiceProxy,

    private cd: ChangeDetectorRef
  ) {}

  ngOnInit(): void {
    this.lopservice.getAllLop().subscribe((result) => {
      this.listlop = result;
      this.cd.detectChanges();
    });
  }

  reload() {
    this.lopservice.getAllLop().subscribe((result) => {
      this.listlop = result;
      this.cd.detectChanges();
    });
  }

  filterLop(event: AutoCompleteCompleteEvent) {
    const query = event.query;
    this.filteredLop = this.listlop.filter(
      (item) => item.tenLop.toLowerCase().indexOf(query.toLowerCase()) === 0
    );
  }
}
