---
Title: 有關 NX
Date: 2022-09-02 11:00
Category: NX
Tags: Siemens
Slug: about-nx
Author: mdecycu
---

這裡將收集與 NX 有關的資料內容. Siemens NX 在 2022.09.01 釋出最新版本為 NX2206.4020, 幾乎同步釋出的 NX2027 最新版本則為 build 3401. cd2022 電腦輔助設計與實習將使用 NX2027.3401 可攜版本.

<!-- PELICAN_END_SUMMARY -->

Recent Opened Files
----

啟動 NX 時將 HOME 以及 UGII_TMP_DIR 設定至 Temp 子目錄後, Recent Opened Files 資料會存入 Temp 目錄, 當 NX 啟動後, 會將資料轉存至 電腦\HKEY_CURRENT_USER\SOFTWARE\Unigraphics Solutions\NX\2027\General\Parts\Recent, 若希望刪除此類資料, 則必須在重新啟動 NX 之前, 分別刪除 Temp 目錄下的所有檔案, 並以 regedit 進入將 Recent 項目下的 Native 機碼刪除.

以下為啟動 NX 時所設定的環境變數:

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

<h1 id="siemenssupportcenter">Siemens Support Center</h1>

從 <https://support.sw.siemens.com/en-US/> 下載檔案後, 可以利用 certutil 工具驗證檔案.

驗證下載檔案:

使用工具: <https://docs.microsoft.com/zh-tw/windows-server/administration/windows-commands/certutil>

指令: certutil -hashfile SiemensNX-2027.3401_wntx64.zip SHA512

SHA512 hash: f180a6c97b9599af0bc6068d344eeb8ea065f79648f64fea9c782fd41e00e430e04aad85c0d09705071c60ea9493c9e75f39e8bf0f22660c3dcb6cbc7819274a

<h1 id="portablenx">Portable NX</h1>

在 Windows 10 配置可攜 NX2207.3401 程式, 需要:

    <https://github.com/Bioruebe/UniExtract2>
    <https://github.com/wixtoolset/wix3/releases/tag/wix3112rtm>

等兩項工具, UniExtract2 用來解開 SiemensNX-2207_wntx64\nx\SiemensNX.msi, 以及 .msi, 而 wix 則用來解開 SiemensNX-2207_wntx64\nx\VC_redist.x64.exe, 指令為:

wix311-binaries\dark.exe vc_redist.x64.exe -x x64-extracted

表示要在 x64-extracted 目錄中取得 x64-extracted\AttachedContainer\packages\vcRuntimeMinimum_amd64\vc_runtimeMinimum_x64.msi 之後, 再利用 UniExtract2 解開所需的 dll 檔案後, 再放入 NXBIN 目錄.

製作 Portable NX2207 的步驟請參考以下影片(以 NX1980 為例):

<script>
var winkVideoData = {
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
<div class="winkVideoContainerClass"><video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData" height="630" muted="true" width="1008">
<source src="./../downloads/w5_portable_nx1980.mp4" type="video/mp4"/></video></div>
<br />



