#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["Aksaty.Services.API/Aksaty.Services.API.csproj", "Aksaty.Services.API/"]
RUN dotnet restore "Aksaty.Services.API/Aksaty.Services.API.csproj"
COPY . .
WORKDIR "/src/Aksaty.Services.API"
RUN dotnet build "Aksaty.Services.API.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Aksaty.Services.API.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Aksaty.Services.API.dll"]
