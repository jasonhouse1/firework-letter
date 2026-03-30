# Birthday Firework

這個專案提供一個可直接開啟的生日煙火頁面，並同時支援三種穩定入口：

- `file`：直接雙擊 HTML 或批次檔
- `http`：透過 Live Server 開 `http://127.0.0.1:5501/birthday-firework.html`
- VS Code 內建：用 `Simple Browser` 顯示 Live Server 網址

## 檔案說明

- `birthday-firework.html`
  主要頁面，包含完整 HTML、CSS、JavaScript。
- `run-browser.bat`
  推薦入口。會先同步到英文安全路徑，再用 Chrome 或 Edge 開啟。
- `run-live-server.bat`
  開啟 Live Server 網址 `http://127.0.0.1:5501/birthday-firework.html`。
- `run-birthday-firework.bat`
  相容入口，等同於 `run-browser.bat`。
- `sync-safe-mirror.bat`
  將可執行版本同步到英文安全路徑。
- `set-html-association-chrome.bat`
  嘗試把目前使用者的 `.html` 開啟命令改到 Chrome。

## 推薦使用方式

### 1. 最穩定的 `file` 入口

直接執行：

- `run-browser.bat`

這會先把主頁同步到：

- `%USERPROFILE%\Desktop\birthday-firework-safe`

再從英文路徑開啟，避開 OneDrive 與中文路徑問題。

### 2. `http` 入口

如果你在 VS Code 用 Live Server：

- 啟動 `Open with Live Server`
- 手動開啟 `http://127.0.0.1:5501/birthday-firework.html`

如果 Live Server 沒有自動跳出瀏覽器，這是目前環境的已知限制，不代表頁面失敗。

### 3. VS Code 內建顯示

在 VS Code 執行：

- `Simple Browser: Show`

然後輸入：

- `http://127.0.0.1:5501/birthday-firework.html`

這是目前最穩定的 VS Code 內建顯示方式。

## 系統關聯修正

目前這台電腦的 `.html` 預設關聯仍可能指向 Internet Explorer。

如果你想修正目前使用者的 `.html` 開啟方式，可執行：

- `set-html-association-chrome.bat`

如果系統權限或政策阻擋這個修改，請改用：

- `run-browser.bat`

## 驗收建議

- 雙擊原始工作區中的 `birthday-firework.html`
- 執行 `run-browser.bat`
- 確認 `%USERPROFILE%\Desktop\birthday-firework-safe` 已產生鏡像
- 在瀏覽器輸入 `http://127.0.0.1:5501/birthday-firework.html`
- 在 VS Code 用 `Simple Browser` 顯示同一網址

# 本站為jasonhouse1所有，翻版必究