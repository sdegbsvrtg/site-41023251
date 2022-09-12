---
Title: Replit 建立網站導引
Date: 2022-09-11 12:00
Category: Replit
Tags: cmsimde, replit
Slug: replit_cmsimde_tutorial
Author: mdecycu
---

這裡將說明如何利用 [Replit] 與 [cmsite] 建立動態與靜態網頁.

<!-- PELICAN_END_SUMMARY -->

在 Replit 上執行 cmsimde
====
[Replit]: https://replit.com
[cmsite]: https://github.com/mdecycu/cmsite

[cmsite] 動態網站可以在 [Replit] 環境執行, 以下為設定步驟:

1. 建立 [Replit] 帳號
2. 登入 Email 驗證 [Replit] 寄出的註冊確認電子郵件
3. 利用 import repository, 以 [cmsite] 倉儲內容, 建立 repl
4. 進入 .replit 檔案設定頁面, 將 main.py 設定為啟動程式
5. 在 shell 介面執行 git submodule update --init --recursive, 取下 [cmsite] 倉儲中 cmsimde 子模組檔案
6. 在 shell 介面執行 pip install flask flask_cors bs4 lxml pelican markdown, 安裝 cmsimde 所需要的模組
7. 按下 Run, 啟動 main.py
8. 登入 [cmsite] 動態網站, 修改管理者密碼, 修改標題與內容後, 以 generate_pages 將動態網頁內容轉為靜態格式
9. 利用 [Replit] 中的 Version Control 功能, 將改版資料推向遠端倉儲

將 main.py 設定為啟動程式畫面:

<img src="./../images/replit_start_with_main_py.png" width="800"></img>

在 shell 介面安裝模組化面:

<img src="./../images/replit_pip_install_lxml.png" width="800"></img>

以下則是從註冊 [Replit] 帳號, 到執行 cmsimde_site 動態網站的示範影片:

<script>
var winkVideoData_replit1 = {
  dataVersion: 1,
  frameRate: 10,
  buttonFrameLength: 5,
  buttonFrameOffset: 2,
  frameStops: {
  },
};
</script>
</p>
<!-- 接下來將 mp4 檔案從 downloads 目錄取出 -->
<div class="winkVideoContainerClass"><video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_replit1" height="600" muted="true" width="800">
<source src="./../downloads/replit/cmsimde_site_on_replit_for_scrum3.mp4" type="video/mp4"/></video>
</div>

Replit references:

1. <https://replit.com/site/teams-for-education>
2. <https://www.cs.carleton.edu/faculty/dmusicant/blog/replit-during-spring-2020/>
3. <https://www.cs.carleton.edu/faculty/dmusicant/blog/replit-following-spring-2021/>


