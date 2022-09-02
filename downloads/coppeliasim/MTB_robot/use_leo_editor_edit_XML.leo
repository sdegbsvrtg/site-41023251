<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20220430151629.1"><vh>@settings</vh>
<v t="leo.20220430151629.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20220430151629.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20220430151700.1"><vh>coppeliasim xml tags</vh></v>
<v t="leo.20220430151532.1"><vh>Imported Files</vh>
<v t="leo.20220430151532.2"><vh>@auto Y:/mdecycu/cd2022_guide/downloads/w11_ajax/MTB_robot/two_link_slvs.simscene.xml</vh></v>
</v>
<v t="leo.20220430153307.1"><vh>Exhaustive format</vh>
<v t="leo.20220430153307.2"><vh>@auto Y:/mdecycu/cd2022_guide/downloads/w11_ajax/MTB_robot/two_link_slvs_shaft_exhaustive.simscene.xml</vh></v>
</v>
<v t="leo.20220430210155.1"><vh>Simple format</vh>
<v t="leo.20220430210155.2"><vh>@auto Y:/mdecycu/cd2022_guide/downloads/w11_ajax/MTB_robot/two_link_slvs_shaft_simple.simscene.xml</vh></v>
</v>
<v t="leo.20220430211656.1"><vh>add Shaft4 manually</vh>
<v t="leo.20220430215347.1"><vh>手動加入第四軸</vh></v>
<v t="leo.20220430211656.2"><vh>@auto Y:/mdecycu/cd2022_guide/downloads/w11_ajax/MTB_robot/two_link_slvs_shaft_simple4.simscene.xml</vh></v>
</v>
<v t="leo.20220430223759.1"><vh>ASCII link2 轉入</vh>
<v t="leo.20220430223759.2"><vh>@auto Y:/mdecycu/cd2022_guide/downloads/w11_ajax/MTB_robot/link2_slvs_simple.simscene.xml</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20220430151532.1"></t>
<t tx="leo.20220430151629.1"></t>
<t tx="leo.20220430151629.2">QTreeWidget {
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
<t tx="leo.20220430151629.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20220430151700.1">@data import-xml-tags 設定位於 leoSettings.leo 中

修改設定後必須重新開啟 Leo Editor 設定才會生效.

目前使用的 @data import-xml-tags 如下:

CoppeliaSim
environment
dynamics
simulation
camera
dummy
shape
mesh</t>
<t tx="leo.20220430153307.1"></t>
<t tx="leo.20220430210155.1"></t>
<t tx="leo.20220430211656.1"></t>
<t tx="leo.20220430215347.1"></t>
<t tx="leo.20220430223759.1"></t>
</tnodes>
</leo_file>
