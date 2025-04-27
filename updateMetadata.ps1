$files = Get-ChildItem -Path . -Filter "*.html"

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw

    # Update the title
    $content = $content -replace '<title>CodeCanvas Website - A Creative Portfolio Template</title>', '<title>CodeCanvas Website - A Creative Portfolio</title>'
    
    # Update the description - match the exact format from the HTML
    $content = $content -replace 'content="Download the best Creative Portfolio HTML Template in 2025"', 'content="Visit the best coding agency in Morocco"'
    
    # Update the author - match the exact format from the HTML
    $content = $content -replace 'content="ClaPat Studio"', 'content="CodeCanvas"'

    Set-Content -Path $file.FullName -Value $content
}

Write-Host "Title, description, and author have been updated in all HTML files." 