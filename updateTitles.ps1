$files = Get-ChildItem -Path . -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName
    $content = $content -replace 'CodeCanvas Website - A Creative Portfolio Template', 'CodeCanvas Website - A Creative Portfolio'
    $content = $content -replace 'Download the best Creative Portfolio HTML Template in 2025', 'Visit the best coding agency in Morocco'
    Set-Content -Path $file.FullName -Value $content
}

Write-Host "All HTML files have been updated with the new title and description." 