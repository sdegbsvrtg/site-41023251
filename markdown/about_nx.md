---
Title: 有關 NX
Date: 2022-09-02 11:00
Category: NX
Tags: Siemens
Slug: about-nx
Author: mdecycu
---

這裡將收集與 NX 有關的資料內容.

<!-- PELICAN_END_SUMMARY -->

Recent Opened Files
----

啟動 NX12 時將 HOME 以及 UGII_TMP_DIR 設定至 Temp 子目錄後, Recent Opened Files 資料會存入 Temp 目錄, 當 NX12 啟動後, 會將資料轉存至 電腦\HKEY_CURRENT_USER\SOFTWARE\Unigraphics Solutions\NX\12.0\General\Parts\Recent, 若希望刪除此類資料, 則必須在重新啟動 NX12 之前, 分別刪除 Temp 目錄下的所有檔案, 並以 regedit 進入將 Recent 項目下的 Native 機碼刪除.

以下為啟動 NX12 時所設定的環境變數:

<pre class="brush: jscript">
set HOME=%cd%\Temp
set UGII_TMP_DIR=%cd%\Temp\
</pre>

NX 繪圖與組立
----

基本的 NX 繪圖與組立, 只需要下列目錄:

<pre class="brush: jscript">
DESIGNSPACEEXPLORER
DESIGN_TOOLS
DIAGRAMCORE
DIAGRAMMING
DRAFTING
DXFDWG
IGES
INSTALL
MECHATRONICS
NXASSEMBLY
NXBIN
NXPARTS
STEP203UG
STEP214UG
Temp
TRANSLATORS
UGFLEXLM
UGII
UGMANAGER
UGOPEN
UGOPENPP
UNFOLD
</pre>
