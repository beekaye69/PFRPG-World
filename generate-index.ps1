# Generate index.html with relative links to files and directories
$folder = Get-Location
$output = "$folder\index.html"

$header = @"
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index of $($folder.Name)</title>
<style>
body { font-family: Arial, sans-serif; background: #111; color: #eee; padding: 2rem; }
a { color: #9bd4ff; text-decoration: none; }
a:hover { text-decoration: underline; }
h1 { color: #7ec8ff; }
ul { list-style-type: none; padding-left: 0; }
</style>
</head>
<body>
<h1>Index of $($folder.Name)</h1>
<ul>
"@

$footer = @"
</ul>
</body>
</html>
"@

$content = $header

# Add directories
Get-ChildItem -Directory | ForEach-Object {
    $name = $_.Name
    $content += "<li><strong><a href='./$name/'>$name/</a></strong></li>`n"
}

# Add files
Get-ChildItem -File | ForEach-Object {
    $name = $_.Name
    if ($name -ne "index.html") {
        $content += "<li><a href='./$name'>$name</a></li>`n"
    }
}

$content += $footer

# Write the file
Set-Content -Path $output -Value $content -Encoding UTF8

Write-Host "index.html created in $folder"