<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="yen.20161112105128.1"><vh>@settings</vh>
<v t="yen.20161112105128.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="yen.20161112105128.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20170830094232.1"><vh>about mde.tw</vh></v>
<v t="leo.20200520153540.1"><vh>@clean index.html</vh>
<v t="leo.20200520153540.2"><vh>html</vh>
<v t="leo.20200520153540.3"><vh>head</vh></v>
<v t="leo.20200520153540.4"><vh>body</vh>
<v t="leo.20200520153540.5"><vh>reveal div</vh>
<v t="leo.20200520153540.6"><vh>slides div</vh>
<v t="yen.20220118074727.1"><vh>2022 Fall</vh>
<v t="yen.20220118074727.2"><vh>2022 Fall page</vh></v>
</v>
</v>
</v>
</v>
</v>
</v>
<v t="leo.20181112074712.1"><vh>@button https server</vh></v>
<v t="leo.20181112074725.1"><vh>@button ipv6 https server</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20170830094232.1">mdecourse.github.io 透過 CNAME 與 github 兩台 DNS server 的設定所完成的 mde.tw 轉址

mde.tw 即 mdecycu.github.io
</t>
<t tx="leo.20181112074712.1">@language python
import os
import subprocess
import threading
import http.server, ssl

def domake():
    # build directory
    os.chdir("./")
    server_address = ('localhost', 5443)
    httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print(os.getcwd())
    print("5443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20181112074725.1">@language python
import os
import subprocess
import threading
import socket
import http.server, ssl

class HTTPServerV6(http.server.HTTPServer):
    address_family = socket.AF_INET6
  
def domake():
    # build directory
    os.chdir("./")
    ipv6_address = '::1'
    server_address = (ipv6_address, 6443)
    #httpd = http.server.HTTPServer(server_address, http.server.SimpleHTTPRequestHandler)
    httpd = HTTPServerV6(server_address, http.server.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,
                                   server_side=True,
                                   certfile='localhost.crt',
                                   keyfile='localhost.key',
                                   ssl_version=ssl.PROTOCOL_TLSv1)
    print("6443 https server started")
    httpd.serve_forever()

# 利用執行緒執行 https 伺服器
make = threading.Thread(target=domake)
make.start()</t>
<t tx="leo.20200520153540.1">@language xml
@tabwidth -4
@others
</t>
<t tx="leo.20200520153540.2">&lt;!doctype html&gt;
&lt;html lang="en"&gt;
@others
&lt;/html&gt;
</t>
<t tx="leo.20200520153540.3">&lt;head&gt;
    &lt;meta charset="utf-8"&gt;

    &lt;title&gt;KMOLab&lt;/title&gt;

    &lt;meta name="description" content="KMOLab"&gt;
    &lt;meta name="author" content="KMOLab"&gt;

    &lt;meta name="apple-mobile-web-app-capable" content="yes"&gt;
    &lt;meta name="apple-mobile-web-app-status-bar-style" content="black-translucent"&gt;

    &lt;meta name="viewport" content="width=device-width, initial-scale=1.0"&gt;

    &lt;link rel="stylesheet" href="reveal/dist/reset.css"&gt;
    &lt;link rel="stylesheet" href="reveal/dist/reveal.css"&gt;
    &lt;link rel="stylesheet" href="reveal/dist/theme/black.css" id="theme"&gt;

    &lt;!-- Theme used for syntax highlighting of code --&gt;
    &lt;link rel="stylesheet" href="reveal/plugin/highlight/monokai.css" id="highlight-theme"&gt;
&lt;/head&gt;
</t>
<t tx="leo.20200520153540.4">&lt;body&gt;
@others
        Reveal.initialize({
            controls: true,
            progress: true,
            center: true,
            hash: true,

            // Learn about plugins: https://revealjs.com/plugins/
            plugins: [ RevealZoom, RevealNotes, RevealSearch, RevealMarkdown, RevealHighlight ]
        });

    &lt;/script&gt;
&lt;/body&gt;
</t>
<t tx="leo.20200520153540.5">&lt;div class="reveal"&gt;
@others
        // Also available as an ES module, see:
        // https://revealjs.com/initialization/
</t>
<t tx="leo.20200520153540.6">    &lt;!-- Any section element inside of this container is displayed as a slide --&gt;
    &lt;div class="slides"&gt;
@others
&lt;/div&gt;
    &lt;script src="reveal/dist/reveal.js"&gt;&lt;/script&gt;
    &lt;script src="reveal/plugin/zoom/zoom.js"&gt;&lt;/script&gt;
    &lt;script src="reveal/plugin/notes/notes.js"&gt;&lt;/script&gt;
    &lt;script src="reveal/plugin/search/search.js"&gt;&lt;/script&gt;
    &lt;script src="reveal/plugin/markdown/markdown.js"&gt;&lt;/script&gt;
    &lt;script src="reveal/plugin/highlight/highlight.js"&gt;&lt;/script&gt;
    &lt;script&gt;

</t>
<t tx="yen.20161112105128.1"></t>
<t tx="yen.20161112105128.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="yen.20161112105128.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="yen.20220118074727.1">        &lt;section data-markdown&gt;
            &lt;script type="text/template"&gt;
@others
            &lt;/script&gt;
        &lt;/section&gt;


        						
    &lt;/div&gt;
</t>
<t tx="yen.20220118074727.2">        ## 2022 Fall

        ### [cp2022](https://mde.tw/cp2022/blog/category/cp2022.html) | [cad2022](https://mde.tw/cad2022/blog/category/cad2022.html) 



</t>
</tnodes>
</leo_file>
