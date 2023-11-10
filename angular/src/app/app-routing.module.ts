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
import { SinhvienComponent } from "./about/quanly/sinhvien/sinhvien.component";
import { AddsinhvienComponent } from "./about/quanly/sinhvien/addsinhvien/addsinhvien.component";
import { SinhvienstartComponent } from "./about/quanly/sinhvienstart/sinhvienstart.component";

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
            path: "update",
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
            path: "add",
            component: AddsinhvienComponent,
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
