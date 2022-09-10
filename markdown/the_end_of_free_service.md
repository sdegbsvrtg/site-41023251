---
Title: 免付費完結篇
Date: 2022-09-07 12:00
Category: Free
Tags: heroku, replit
Slug: the_end_of_free_service
Author: mdecycu
---

天下沒有白吃的午餐. 2017 年 OpenShift 就曾經終止過免付費雲端應用服務, 2022 年GDrive 也才剛終止教育單位無限空間, [上個月], 終於輪到 Heroku.

不過就在此時, [Replit] 即將在雲端應用程式服務界, 取而代之.

[上個月]: https://blog.heroku.com/next-chapter
[Replit]: https://replit.com

<!-- PELICAN_END_SUMMARY -->

Heroku 的宣布
====

Starting October 26, 2022, we will begin deleting inactive accounts and associated storage for accounts that have been inactive for over a year. Starting November 28, 2022, we plan to stop offering free product plans and plan to start shutting down free dynos and data services. 

Heroku 進入所謂 next chapter 之後, 希望持續使用免費雲端應用程式服務的用戶, 可以轉往 <https://blog.replit.com/heroku-alternatives>.

註冊 Replit 帳號
====

首先以 scrum1 與 cadlab 註冊帳號後, 將 cmsimde_site 透過 <https://replit.com/heroku> 轉換服務. 在 <https://docs.replit.com/hosting/deploying-http-servers> 的協助下, 應該就可以設法執行動態網頁或靜態網頁.

Replit 簡介
====

根據 <https://docs.replit.com/>:

Replit is a platform for creating and sharing software. You can write your code and host it all in the same place. Replit is also a place to learn how to code, so we have some awesome built-in educational features as well.

Replit can do it all. It can replace your:

1. code editor (e.g. VS Code, Sublime Text, IntelliJ IDEA)
2. development environment (e.g. your operating system, and build tools like npm or pip)
3. cloud provider (e.g. AWS, Netlify)
4. team collaboration tools (e.g. Google Docs, GitHub)
5. teaching tools (e.g. Canva, Moodle, Blackboard)
6. learning tools (e.g. Codecademy, Coursera, Udemy, Udacity)

免費帳號可建立不限數量的倉儲, 但只提供 500 MB 容量, 以及 500 MB 的記憶體, 加上 0.2-0.5 vCPUs, 因此大概只夠讓使用者測試了解 Replit 的使用流程以及配置方法.

希望利用 Replit 配置靜態網頁者, 可以參考 <https://docs.replit.com/hosting/hosting-web-pages>.

以 Replit 建立靜態網頁
====

1. 選擇以 import from github 的方式建立 repl.
2. 選擇從 <https://github.com/mdecycu/cmsimde_site> import 檔案
3. language 選擇 html, css 與 javascript 類別
4. 將 repl 名稱從 cmsimte_site 改為 scrum1 (即與 account 名稱相同)
5. 隨即可以在 <https://scrum1.repl.co> 看到靜態網頁

Replit Flask 範例
====

Flask 基本範例

<pre class="brush: python">
from flask import Flask

app = Flask('app')

@app.route('/')
def hello_world():
    return 'Hello, World!'

app.run(host='0.0.0.0', port=8080)
</pre>

Flask 以 wsgi 執行

<pre class="brush: python">
from flask import Flask
from gevent.pywsgi import WSGIServer

app = Flask('app')

@app.route('/')
def hello_world():
    return 'Hello, World!'

#app.run(host='0.0.0.0', port=8080)
http_server = WSGIServer(('0.0.0.0', 8080), app)
http_server.serve_forever()
</pre>

Flask, wsgi 並壓縮資料

<pre class="brush: python">
from gevent import monkey
monkey.patch_all()
from flask import Flask
from gevent.pywsgi import WSGIServer
from flask_compress import Compress

app = Flask('app')
compress = Compress()
compress.init_app(app)

@app.route('/')
def hello_world():
    return 'Hello, World!'

#app.run(host='0.0.0.0', port=8080)
http_server = WSGIServer(('0.0.0.0', 8080), app)
http_server.serve_forever()
</pre>

Get from Google

<pre class="brush: python">
from flask import Flask, request 
from flask_cors import CORS
import requests

app = Flask(__name__)
CORS(app)
  
@app.route('/get_from_google')
@app.route('/')
def studlist():
  r = requests.get("https://google.com")
  return r.text

app.run(host="0.0.0.0", debug=True)
</pre>

[Flask 與資料庫]

[Flask 與資料庫]: https://replit.com/talk/ask/Can-someone-help-me-disable-cors-policy-so-other-repls-can-access-my-database/143997
[nfulist_local_8080.py]: ./../downloads/nfulist_local_8080.py

<pre class="brush: python">
from flask import *
from flask_cors import CORS
from replit import db

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'

@app.route("/set/<name>/<data>/")
def set(name, data):
  print(name + " = " + data)
  db[name] = data
  return ""

@app.route("/get/<name>/")
def get(name):
  return db[name]

app.run(host="0.0.0.0", debug=True)
</pre>

nfulist 搬遷
====

<https://github.com/mdecourse/nfulist> 原先配置在 Heroku, 目前已經無法正常運作, 因此必須設法搬到 Replit.

理論上, 在 Replit 可以將程式寫為:

<pre class="brush: python">
from flask import Flask, request 
from flask_cors import CORS
  
import requests
import bs4
#import ssl
  
app = Flask(__name__)
CORS(app)
  
@app.route('/studlist')
@app.route('/')
def studlist():
    semester = request.args.get('semester')
    courseno = request.args.get('courseno')
    column = request.args.get('column')

    if semester == None:
        semester = '1091'
    if courseno == None:
        courseno = '0762'
    
    headers = {'X-Requested-With': 'XMLHttpRequest'}

    url = 'https://qry.nfu.edu.tw/studlist.php?selyr=1091&seqno=0762'
    try:
        result = requests.get(url, verify=False, timeout=3)
    except:
        return "Connection refused"
    soup = bs4.BeautifulSoup(result.text, 'lxml')
    table = soup.find('table', {'class': 'tbcls'})
    data = []
    rows = table.find_all('tr')
    for row in rows:
        cols = row.find_all('td')
        cols = [ele.text.strip() for ele in cols]
        data.append([ele for ele in cols if ele]) # Get rid of empty values
    output = ""
    for i in data[2:]:
        #print(i[0])
        if column == "True":
            output +=i[0] + "</br>"
        else:
            output +=i[0] + "\n"
        
    return output
    #return  str(pselyr) + " + " +str(pseqno)
  
# 即使在近端仍希望以 https 模式下執行
#context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
#context.load_cert_chain('localhost.crt', 'localhost.key')

app.run(host="0.0.0.0", debug=True)
</pre>

但是 qry.nfu.edu.tw 主機先前可以透過 Heroku 遠端連線, 但是卻拒絕 Replit 虛擬主機的連線取值, 因此 nfulist 網際程式必須另外配置在工作站室中的 Server 或另外再找合用的雲端應用程式伺服器.

在近端執行的 nfulist 程式碼為 ([nfulist_local_8080.py]):

<pre class="brush: python">
import os
from flask import Flask, request 
from flask_cors import CORS
import requests
import bs4
#import ssl
# cpa: http://localhost:8080/?semester=1111&courseno=0747&column=True
# cpb: http://localhost:8080/?semester=1111&courseno=0761&column=True
# cada: http://localhost:8080/?semester=1111&courseno=0773&column=True
# cadb: http://localhost:8080/?semester=1111&courseno=0786&column=True

app = Flask(__name__)
CORS(app)
  
@app.route('/studlist')
@app.route('/')
def studlist():
    semester = request.args.get('semester')
    courseno = request.args.get('courseno')
    column = request.args.get('column')

    if semester == None:
        semester = '1091'
    if courseno == None:
        courseno = '0762'

    url = 'https://qry.nfu.edu.tw/studlist.php?selyr=' + semester+ '&seqno=' + courseno
    try:
        result = requests.get(url, timeout=3)
    except:
        return "Connection refused"
    return result.text
    soup = bs4.BeautifulSoup(result.text, 'lxml')
    table = soup.find('table', {'class': 'tbcls'})
    data = []
    rows = table.find_all('tr')
    for row in rows:
        cols = row.find_all('td')
        cols = [ele.text.strip() for ele in cols]
        data.append([ele for ele in cols if ele]) # Get rid of empty values
    output = ""
    for i in data[2:]:
        #print(i[0])
        if column == "True":
            output +=i[0] + "</br>"
        else:
            output +=i[0] + "\n"
        
    return output
    #return  str(pselyr) + " + " +str(pseqno)
  
# 即使在近端仍希望以 https 模式下執行
#context = ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
#context.load_cert_chain('localhost.crt', 'localhost.key')

app.run(host="0.0.0.0", port=8080, debug=True)
</pre>

配置 cmsimde_site
====

在 Replit 配置 <https://github.com/mdecycu/cmsimde_site> 的隨選動態網站位於: <https://cmsimdesite.nfulist.repl.co>, 而常駐靜態網站則另外配置於 <https://scrum1.repl.co>. 由於這兩個 repl 中的檔案並沒能同步, 因此在 [Replit] 目前針對 repl 無法直接更改執行的 language 情況下, 配置 cmsimde 網際內容管理的方式如下.

[Replit] 與 Github Pages 結合
====

[Replit] 雖然以雲端 IDE 自稱, 其實是一個使用者友善的雲端應用程式服務, 使用者在各種 language 設定下, 儘管目前只能選定一種執行模式, 但多重的應用服務, 可以藉著 Version Control 功能, 與 Github 倉儲結合, 能夠採下列流程, 部署 cmsimde 網際內容管理的動態與靜態網站內容.

基本的使用流程是: 將動態網站部署在 [Replit], 且使用該動態網站內容建立對應的 Github 倉儲, 並且在 Github 端設定 Pages, 以便用來伺服與 [Replit] 動態網站同步的靜態網站.

 結合兩者的前提是, cmsimde 網站的 .gitignore 必須事先修改為:
 
 <pre class="brush: jscript">
 # Byte-compiled
__pycache__/
venv/
 </pre>
 
表示在 Github Pages 端的倉儲, 並不需要 [Replit] 端的虛擬 Python 與設定檔案, 只要提供 cmsimde 的完整倉儲資料即可.

另外一個重點是: 雖然 cmsimde 所需要的 Python modules, 在利用 main.py 啟動 [Replit] 端的動態網站時, 會自動安裝, 但 lxml 模組卻不會隨之安裝.

因此必須手動進入 shell, 以 pip 安裝 lxml.

pip install lxml

完成上述準備動作後, 接著修改 cmsimde 目錄下的  flaskapp.py, 處理 nocache.py 導入模組為:

from .nocache import nocache

或者 cmsimde 子模組中的程式內容不變, 但必須將 cmsimde/nocache.py 複製一份至根目錄.

最後再執行 main.py:

<pre class="brush: python">
from cmsimde import flaskapp

flaskapp.app.run(host='0.0.0.0', port=8080)
</pre>

[Replit] 端的動態網站就可以啟動: <https://c.scrum1.repl.co>

只要再處理 Github Pages 端倉儲的同步, 就可以得到靜態網站: <https://scrum-1.github.io/c>

若資料直接先從 Github 倉儲進行改版, 則在 [Replit] 端的 Version Control, 可以利用 pull, 將改版內容取回合併.
