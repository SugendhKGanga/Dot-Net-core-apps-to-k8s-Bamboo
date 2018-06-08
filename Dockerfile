FROM gcr.io/google-appengine/aspnetcore:2.0
ADD ./bin/Release/netcoreapp2.0/publish /app
ENV ASPNETCORE_URLS=http://*:${PORT}
WORKDIR /app
ENTRYPOINT [ "dotnet", "HelloWorldAspNetCore.dll"]
