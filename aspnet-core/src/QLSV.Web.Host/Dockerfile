FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /src
COPY ["src/QLSV.Web.Host/QLSV.Web.Host.csproj", "src/QLSV.Web.Host/"]
COPY ["src/QLSV.Web.Core/QLSV.Web.Core.csproj", "src/QLSV.Web.Core/"]
COPY ["src/QLSV.Application/QLSV.Application.csproj", "src/QLSV.Application/"]
COPY ["src/QLSV.Core/QLSV.Core.csproj", "src/QLSV.Core/"]
COPY ["src/QLSV.EntityFrameworkCore/QLSV.EntityFrameworkCore.csproj", "src/QLSV.EntityFrameworkCore/"]
WORKDIR "/src/src/QLSV.Web.Host"
RUN dotnet restore 

WORKDIR /src
COPY ["src/QLSV.Web.Host", "src/QLSV.Web.Host"]
COPY ["src/QLSV.Web.Core", "src/QLSV.Web.Core"]
COPY ["src/QLSV.Application", "src/QLSV.Application"]
COPY ["src/QLSV.Core", "src/QLSV.Core"]
COPY ["src/QLSV.EntityFrameworkCore", "src/QLSV.EntityFrameworkCore"]
WORKDIR "/src/src/QLSV.Web.Host"
RUN dotnet publish -c Release -o /publish --no-restore

FROM mcr.microsoft.com/dotnet/aspnet:7.0
EXPOSE 80
WORKDIR /app
COPY --from=build /publish .
ENTRYPOINT ["dotnet", "QLSV.Web.Host.dll"]
