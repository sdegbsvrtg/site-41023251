---
Title: 有關 Wink
Date: 2022-09-07 11:00
Category: Wink
Tags: mp4, ffmpeg, javascript
Slug: about-wink
Author: mdecycu
---

這裡將收集與 Wink 有關的資料內容. Wink 是一套製作電腦操作展示的 freeware. 從 3.0 版之後, 所製作的教學影片以 ffmpeg 存為 mp4 格式, 並透過 Javascript 在網頁上與使用者進行互動.

<!-- PELICAN_END_SUMMARY -->

Wink 下載
====

Wink 3.0 可直接從 <https://www.debugmode.com/wink/> 下載. ffmpeg.exe 則可從[這裡]下載.

[這裡]: https://github.com/BtbN/FFmpeg-Builds/releases

每一個 wink 影片嵌入網頁時, 在同一頁面下的多個影片檔案, 都要有獨一的 data-varname 變數名稱, 在 cmsimde 架構下:
data-dirname 動態網頁 - 使用 /static

靜態網頁 - 使用 ./../cmsimde/static

然後動態網頁 mp4 video 標註 src - 使用 /downloads/影片名稱.mp4

靜態網頁 mp4 video 標註 src - 使用 ./../downloads/影片名稱.mp4

在 Blog 架構下, 則一律先將 .mp4 檔案 acp (git add, git commit and git push) 至 Github 倉儲後, 再使用靜態網頁連結 .mp4 與 data-dirname 設定.

以下為兩個 Wink3 官方釋出的 Tutorial (已經全數刪除原先的 buttons, 並直接使用 html5 的 video controls):

Tutorial1:

<script>
var winkVideoData_tutorial1 = {
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
<div class="winkVideoContainerClass"><video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_tutorial1" height="600" muted="true" width="800">
<source src="./../downloads/wink_tutorial/tutorial1.mp4" type="video/mp4"/></video>
</div>

Tutorial 2:

<!-- 每一個 wink 影片都要有獨立的 data-varname 變數名稱
data-dirname 則區分動態網頁 - 使用 /static
與靜態網頁 - 使用 ./../cmsimde/static
然後動態網頁 mp4 - 使用 /downloads/影片名稱.mp4
與靜態網頁 - 使用 ./../downloads/影片名稱.mp4
 -->
<script>
var winkVideoData_tutorial2 = {
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
<div class="winkVideoContainerClass"><video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_tutorial2" height="600" muted="true" width="800">
<source src="./../downloads/wink_tutorial/tutorial2.mp4" type="video/mp4"/></video></div>

上述嵌入 Tutorial1 Wink3 mp4 影片的超文件內容如下:

<pre class="brush: html">
&lt;script&gt;
var winkVideoData_tutorial1 = {
  dataVersion: 1,
  frameRate: 10,
  buttonFrameLength: 5,
  buttonFrameOffset: 2,
  frameStops: {
  },
};
&lt;/script&gt;
&lt;/p&gt;
&lt;!-- 接下來將 mp4 檔案從 downloads 目錄取出 --&gt;
&lt;div class="winkVideoContainerClass"&gt;&lt;video autoplay="autoplay" class="winkVideoClass" controls="controls" data-dirname="./../cmsimde/static" data-varname="winkVideoData_tutorial1" height="600" muted="true" width="800"&gt;
&lt;source src="./../downloads/wink_tutorial/tutorial1.mp4" type="video/mp4"/&gt;&lt;/video&gt;
&lt;/div&gt;
&lt;br \&gt;
</pre>
