# ====================================================
# GitHub Setup Script - Data Mining Teaching Repo
# รันสคริปต์นี้ใน PowerShell (Run as Administrator)
# ====================================================

$repoName = "teaching_datamining"
$githubUser = "wikanda-phaphan"
$folderPath = "C:\Users\AS\Claude\Projects\อักริดฮัพ"

Write-Host "=== ตั้งค่า Git Repository ===" -ForegroundColor Cyan

# ไปที่โฟลเดอร์
Set-Location $folderPath

# ตั้งค่า git user (เปลี่ยนตามต้องการ)
git config --global user.name "Wikanda Phaphan"
git config --global user.email "wikandap@kmutnb.ac.th"

# init git
git init -b main
Write-Host "✓ Git initialized" -ForegroundColor Green

# add ไฟล์ทั้งหมด
git add README.md
git add textbook_datamining_*.pdf
git commit -m "Initial commit: Data Mining textbook chapters"
Write-Host "✓ Files committed" -ForegroundColor Green

Write-Host ""
Write-Host "=== ขั้นตอนต่อไป ===" -ForegroundColor Yellow
Write-Host "1. ไปที่ https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: $repoName" -ForegroundColor White
Write-Host "3. ตั้งเป็น Public" -ForegroundColor White
Write-Host "4. ไม่ต้อง check 'Add a README file'" -ForegroundColor White
Write-Host "5. กด 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "จากนั้นรันคำสั่งด้านล่างใน PowerShell:" -ForegroundColor Yellow
Write-Host ""
Write-Host "git remote add origin https://github.com/$githubUser/$repoName.git" -ForegroundColor Cyan
Write-Host "git push -u origin main" -ForegroundColor Cyan
Write-Host ""
Write-Host "URL ของ repo จะเป็น:" -ForegroundColor Green
Write-Host "https://github.com/$githubUser/$repoName" -ForegroundColor Green
