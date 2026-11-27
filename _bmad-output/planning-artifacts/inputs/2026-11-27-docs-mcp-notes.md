Input from User base don  PDFromScratch/blob/main/_bmad-output/planning-artifacts/research/technical-self-hosted-docs-mcp-server-dotnet-2026-11-26/research.md

- we should host in docker 
- using Node instead of c# is viable if pragmatic, host a node solution is acceptable 
- we need to move to a solid dev framework for this quickly post spike 
- We have no requirement to make anything compatible with context 7, this is internal only. We can match publicly known implementations if its easy and useful but the core driver is cheap offline AI support. 
- Should use latest definition of MCP and utilise oAuth
- Scale is small team, 1 or 2 to begin within for now, overall even if used in entire team likely to peak at 10 (at least in the foreseeable future) 

Main libs 

dotnet 10 
blazor/asp.net 
entity framework 
mudblazor (there is an open source mcp for that already) 

full list 

    <PackageVersion Include="coverlet.collector" Version="10.0.1" />
    <PackageVersion Include="Hangfire" Version="1.8.25" />
    <PackageVersion Include="Hangfire.AspNetCore" Version="1.8.25" />
    <PackageVersion Include="Hangfire.Core" Version="1.8.25" />
    <PackageVersion Include="Hangfire.SqlServer" Version="1.8.25" />
    <PackageVersion Include="FluentValidation" Version="12.1.1" />
    <PackageVersion Include="ImeSense.WixToolset.Iis.wixext" Version="7.0.0" />
    <PackageVersion Include="Microsoft.Extensions.Hosting" Version="10.0.13" />
    <PackageVersion Include="Microsoft.Extensions.Hosting.WindowsServices" Version="10.0.13" />
    <PackageVersion Include="Microsoft.Extensions.Options" Version="10.0.13" />
    <PackageVersion Include="Microsoft.Extensions.Configuration" Version="10.0.13" />
    <PackageVersion Include="Microsoft.Extensions.Configuration.Binder" Version="10.0.11" />
    <PackageVersion Include="Microsoft.Extensions.Configuration.Json" Version="10.0.13" />
    <PackageVersion Include="Microsoft.Extensions.Configuration.UserSecrets" Version="10.0.13" />
    <PackageVersion Include="Microsoft.EntityFrameworkCore" Version="10.0.13" />
    <PackageVersion Include="Microsoft.EntityFrameworkCore.Design" Version="10.0.13" />
    <PackageVersion Include="Microsoft.EntityFrameworkCore.SqlServer" Version="10.0.13" />
    <PackageVersion Include="Microsoft.EntityFrameworkCore.Tools" Version="10.0.13" />
    <PackageVersion Include="microsoft.identity.web" Version="4.14.2" />
    <PackageVersion Include="microsoft.identity.web.ui" Version="4.14.2" />
    <PackageVersion Include="Microsoft.Web.Administration" Version="11.1.0" />
    <PackageVersion Include="MudBlazor" Version="9.9.0" />
    <PackageVersion Include="Scrutor" Version="7.0.0" />
    <PackageVersion Include="Newtonsoft.Json" Version="13.0.4" />
    <PackageVersion Include="Serilog" Version="4.4.0" />
    <PackageVersion Include="Serilog.Extensions.Logging" Version="10.0.0" />
    <PackageVersion Include="Serilog.AspNetCore" Version="10.0.0" />
    <PackageVersion Include="Serilog.Sinks.EventLog" Version="4.0.0" />
    <PackageVersion Include="Serilog.Sinks.Console" Version="6.1.1" />
    <PackageVersion Include="JetBrains.Annotations" Version="2026.2.0" />
    <PackageVersion Include="Microsoft.NET.Test.Sdk" Version="18.9.0" />
    <PackageVersion Include="NSubstitute" Version="6.2.0" />
    <PackageVersion Include="Respawn" Version="6.2.1" />
    <PackageVersion Include="Shouldly" Version="4.3.0" />
    <PackageVersion Include="System.Net.Http" Version="4.3.4" />
    <PackageVersion Include="System.Reflection.TypeExtensions" Version="4.7.0" />
    <PackageVersion Include="System.Security.Cryptography.Pkcs" Version="10.0.13" />
    <PackageVersion Include="System.Security.Cryptography.X509Certificates" Version="4.3.2" />
    <PackageVersion Include="System.Security.Cryptography.Xml" Version="10.0.13" />
    <PackageVersion Include="WireMock.Net" Version="2.15.0" />
    <PackageVersion Include="WolverineFx" Version="6.32.0" />
    <PackageVersion Include="WolverineFx.RuntimeCompilation" Version="6.32.0" />
    <PackageVersion Include="xunit.runner.visualstudio" Version="3.1.4" />
    <PackageVersion Include="xunit.v3" Version="3.2.2" />
    <PackageVersion Include="RestSharp" Version="112.1.0" />
    <PackageVersion Include="System.ServiceProcess.ServiceController" Version="10.0.11" />
    <PackageVersion Include="WixToolset.Dtf.CustomAction" Version="5.0.2" />
    <PackageVersion Include="WixToolset.Dtf.WindowsInstaller" Version="5.0.2" />