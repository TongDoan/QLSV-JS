import { NgModule } from "@angular/core";
import { HTTP_INTERCEPTORS } from "@angular/common/http";
import { AbpHttpInterceptor } from "abp-ng2-module";

import * as ApiServiceProxies from "./service-proxies";

@NgModule({
  providers: [
    ApiServiceProxies.RoleServiceProxy,
    ApiServiceProxies.SessionServiceProxy,
    ApiServiceProxies.TenantServiceProxy,
    ApiServiceProxies.UserServiceProxy,
    ApiServiceProxies.TokenAuthServiceProxy,
    ApiServiceProxies.AccountServiceProxy,

    ApiServiceProxies.StudentManagementServiceProxy,
    ApiServiceProxies.KetQuaManagementServiceProxy,
    ApiServiceProxies.QueManagementServiceProxy,
    ApiServiceProxies.KhoaManagementServiceProxy,
    ApiServiceProxies.LopManagementServiceProxy,
    ApiServiceProxies.MonHocManagementServiceProxy,
    ApiServiceProxies.SearchStudentServiceProxy,

    { provide: HTTP_INTERCEPTORS, useClass: AbpHttpInterceptor, multi: true },
  ],
})
export class ServiceProxyModule {}
