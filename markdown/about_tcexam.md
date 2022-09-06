---
Title: 有關 TCExam
Date: 2022-09-01 12:00
Category: tcexam
Tags: exam, php, pgsql, nginx
Slug: about-tcexam
Author: mdecycu
---

這裡將收集與 TCExam 有關的資料內容.

<!-- PELICAN_END_SUMMARY -->

虛擬主機上的 TCExam
====

相關程式檔案放在 c:\tcexam, 管理者帳號設為 tcexam. 啟動 exam.網域.名稱, 牽涉 nginx, php, pgsql 以及 tcexam 程式原始碼.

nginx 主要負責將 http 跳轉至 https, 並且透過 fastcgi 啟動 php 解譯器的執行. 而 nginx 的 server 設定範例如下:

<pre class="brush: jscript">
server { 
    listen    98 ssl;
    listen    [::]:98 ssl;
    
    root c:/tmp/TCExam;

    server_name    exam.網域.名稱;
    ssl_certificate    C:/pj2022/stunnel/config/fullchain.pem;
    ssl_certificate_key    C:/pj2022/stunnel/config/privkey.pem;
    ssl_protocols    TLSv1 TLSv1.1 TLSv1.2;
    ssl_ciphers    HIGH:!aNULL:!MD5;
    
    location /{ 
        index index.html index.php;
    }
    
    location ~ \.php$ {
        fastcgi_pass   127.0.0.1:9123;
        fastcgi_index  index.php;
        fastcgi_param  SCRIPT_FILENAME  $document_root$fastcgi_script_name;
        include        fastcgi_params;
    }
}
</pre>

pgsql 以手動 start.bat 啟動, 設定檔案如下:

<pre class="brush: jscript">
@echo off
set /p DATA=&lt;PGDATA.txt
cd %~dp0
bin\postgres -V
bin\pg_ctl -D %DATA% -l logfile.txt start
</pre>

其中的 PGDATA.txt 內容為 .\data, 表示資料庫內容存在 .\data 目錄中.

一旦考試結束後, 以 stop.bat 關閉 pgsql:

<pre class="brush: jscript">
@echo off
set /p DATA=&lt;PGDATA.txt
cd %~dp0
bin\pg_ctl -D %DATA% -l logfile.txt stop
</pre>

TCExam 原始碼
====

由於目前所啟動的線上 TCExam 採用 2022.06.9 釋出的 PHP 8.1.7 版, 而 <https://github.com/tecnickcom/tcexam> 最近修改日期為 2021.08.05, 因此直接從 TCExam github 網站 clone 下來的原始碼無法在最新版的 PHP 解譯環境中執行.

因此啟動修改 TCExam, 令其可以在 PHP 8.1.7 中執行, 且 pdf 轉檔的部分, 也自行建立中文字型, 以便正確將考試內容轉為中英並存的格式.

目前尚未完成的設定為 send mail 的部分.

總結上述說明, 要啟動 TCExam 考試系統, 必須確認 nginx 已經啟動, 然後手動執行 pgsql 目錄下的 start.bat, 並且注意 c:\certbot 目錄下有關 https 數位簽章每 90 天必須設法手動或自動更新.

CYCU TCExam 主機
====

目前 exam dot cycu dot org 採用 10ff:1:0::1 設定, 使用 8GB 虛擬主機測試是否合用. 目前透過 nginx 管制, 只允許系上 IPv6 網段連線.
