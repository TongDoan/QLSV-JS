import { NgModule } from "@angular/core";
import { RouterModule } from "@angular/router";
import { AppComponent } from "./app.component";
import { AppRouteGuard } from "@shared/auth/auth-route-guard";
import { HomeComponent } from "./home/home.component";
import { AboutComponent } from "./about/about.component";
import { UsersComponent } from "./users/users.component";
import { TenantsComponent } from "./tenants/tenants.component";
import { RolesComponent } from "app/roles/roles.component";
import { ChangePasswordComponent } from "./users/change-password/change-password.component";
import { SinhvienComponent } from "./about/quanlysinhvien/sinhvien/sinhvien.component";
import { AddsinhvienComponent } from "./about/quanlysinhvien/sinhvien/addsinhvien/addsinhvien.component";
import { SinhvienstartComponent } from "./about/quanlysinhvien/sinhvienstart/sinhvienstart.component";
import { LopstartComponent } from "./about/quanlylop/lopstart/lopstart.component";
import { LopComponent } from "./about/quanlylop/lop/lop.component";
import { AddLopComponent } from "./about/quanlylop/lop/addlop/addlop.component";
import { AdddiemComponent } from "./about/quanlydiem/diem/adddiem/adddiem.component";
import { DiemstartComponent } from "./about/quanlydiem/diemstart/diemstart.component";
import { DiemComponent } from "./about/quanlydiem/diem/diem.component";

@NgModule({
  imports: [
    RouterModule.forChild([
      {
        path: "",
        component: AppComponent,
        children: [
          {
            path: "home",
            component: HomeComponent,
            canActivate: [AppRouteGuard],
          },
          {
            path: "users",
            component: UsersComponent,
            data: { permission: "Pages.Users" },
            canActivate: [AppRouteGuard],
          },
          {
            path: "roles",
            component: RolesComponent,
            data: { permission: "Pages.Roles" },
            canActivate: [AppRouteGuard],
          },
          {
            path: "tenants",
            component: TenantsComponent,
            data: { permission: "Pages.Tenants" },
            canActivate: [AppRouteGuard],
          },
          {
            path: "about",
            component: AboutComponent,
            canActivate: [AppRouteGuard],
            children: [
              {
                path: ":idsinhvien",
                component: SinhvienComponent,
                canActivate: [AppRouteGuard],
              },
            ],
          },
          {
            path: "updatesinhvien",
            component: SinhvienstartComponent,
            canActivate: [AppRouteGuard],
            children: [
              {
                path: ":idsinhvien",
                component: SinhvienComponent,
                canActivate: [AppRouteGuard],
              },
            ],
          },
          {
            path: "updatelop",
            component: LopstartComponent,
            canActivate: [AppRouteGuard],
            children: [
              {
                path: ":idlop",
                component: LopComponent,
                canActivate: [AppRouteGuard],
              },
            ],
          },
          {
            path: "updatediem",
            component: DiemstartComponent,
            canActivate: [AppRouteGuard],
            children: [
              {
                path: ":iddiem",
                component: DiemComponent,
                canActivate: [AppRouteGuard],
              },
            ],
          },
          {
            path: "add",
            component: AddsinhvienComponent,
            canActivate: [AppRouteGuard],
          },
          {
            path: "addlop",
            component: AddLopComponent,
            canActivate: [AppRouteGuard],
          },
          {
            path: "adddiem",
            component: AdddiemComponent,
            canActivate: [AppRouteGuard],
          },
          {
            path: "update-password",
            component: ChangePasswordComponent,
            canActivate: [AppRouteGuard],
          },
        ],
      },
    ]),
  ],
  exports: [RouterModule],
})
export class AppRoutingModule {}
