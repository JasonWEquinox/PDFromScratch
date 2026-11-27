# Checks which of our libraries' doc sites publish llms.txt / llms-full.txt.
# Run from PowerShell 7+:   pwsh ./spike/llms-census.ps1
# Several URLs are best guesses: a "no site" result just means the URL needs correcting, not that the library has no docs.
$sites = [ordered]@{
  "WolverineFx"       = "https://wolverinefx.io"
  "Marten"            = "https://martendb.io"
  "MudBlazor"         = "https://mudblazor.com"
  "Hangfire"          = "https://docs.hangfire.io"
  "FluentValidation"  = "https://docs.fluentvalidation.net"
  "Serilog"           = "https://serilog.net"
  "xUnit"             = "https://xunit.net"
  "Shouldly"          = "https://docs.shouldly.org"
  "NSubstitute"       = "https://nsubstitute.github.io"
  "WireMock.Net"      = "https://wiremock.org"
  "RestSharp"         = "https://restsharp.dev"
  "Newtonsoft.Json"   = "https://www.newtonsoft.com/json"
  "WiX Toolset"       = "https://wixtoolset.org"
  "Microsoft Learn"   = "https://learn.microsoft.com"
}
foreach ($name in $sites.Keys) {
  $base = $sites[$name].TrimEnd('/')
  $result = foreach ($file in "llms.txt", "llms-full.txt") {
    try {
      $r = Invoke-WebRequest -Uri "$base/$file" -Method Head -TimeoutSec 15 -MaximumRedirection 3 -ErrorAction Stop
      "$file=YES"
    } catch {
      $code = $_.Exception.Response.StatusCode.value__
      if ($code) { "$file=no($code)" } else { "$file=no site" }
    }
  }
  "{0,-18} {1,-35} {2}" -f $name, $base, ($result -join "  ")
}
