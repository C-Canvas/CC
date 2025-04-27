$files = Get-ChildItem -Path . -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName
    $content = $content -replace '<meta name="author" content="ClaPat Studio">', '<meta name="author" content="CodeCanvas">'
    Set-Content -Path $file.FullName -Value $content
}

Write-Host "Author has been updated to CodeCanvas in all HTML files." 