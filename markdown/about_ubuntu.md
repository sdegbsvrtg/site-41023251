---
Title: 有關 Ubuntu
Date: 2022-09-17 12:00
Category: Ubuntu
Tags: cad2022, cp2022
Slug: 2022_fall_about_ubuntu
Author: mdecycu
---

簡要說明 2022 Fall 與計算機程式及電腦輔助設計與實習課程相關的 Ubuntu 伺服器安裝與設置.

<!-- PELICAN_END_SUMMARY -->

Ubuntu
====

目前使用 Ubuntu 20.04 與 22.04, 20.04 生命週期可以到 2025, 而 22.04 則可以到 2027, 其中主要安裝配置 Squid, Bind, Nginx, uwsgi 以及 Fossil SCM. 管理的網域有 mde.nfu 與 eng.nfu.

基本指令
====

查 Ubuntu 操作系統的版本:

lsb_release -a 

Squid
====

安裝 squid:

sudo apt install squid

設定檔案位置: /etc/squid/squid.conf

重新啟動 squid:

sudo /etc/init.d/squid restart

ufw
====

以管理者身分執行指令:

sudo -s 

查驗 ufw 狀態 (以下各指令必須採管理者模式才能執行):

ufw status

允許主機連線:

若允許單一主機連線所有 ports, 則直接列出完整的 IP addresses. 若涵蓋特定範圍, 則需加以標示, 以 IPv6 為例: 
2001:xxxx:xxxx:: 表示前三區段為固定標示, 隨後的五個區段 以 :: 表示, 則涵蓋所有組合的 IPv6 addresses.

<pre class="brush: jscript">
ufw allow from 192.168.1.1
ufw allow from 2001:xxxx:xxxx::/24
</pre>

只允許 IPv6 群組電腦經由 port 22 連線, 拒絕其他電腦連線:

<pre class="brush: jscript">
ufw allow from 2001:288:6004:xx::/32 to any port 22
ufw deny 22
</pre>

令上述設定生效:

ufw enable

其次, 若要刪除原先 ufw 的所有設定可以使用 ufw reset, 若要暫時關閉 ufw, 採用 ufw disable.

符號名稱的部分, 需要限制 port 22 連線外, 必須讓所有主機都能對 port 53 連線:

<pre class="brush: jscript">
sudo -s 
ufw status
ufw allow from your_ipv4_or_ipv6_ip
ufw allow from 2001:288::/16 to any port 22
ufw deny 22
ufw allow 53
ufw enable
</pre>

WWW 伺服器若採用 port 80 與 443 配置, 則需要對所有主機開放, port 5443 若執行 Fossil SCM, 也必須開放, 其他也是對 port 22 有連線範圍的限制.

<pre class="brush: jscript">
sudo -s 
ufw status
ufw allow from your_ipv4_or_ipv6_ip
ufw allow from 2001:288::/16 to any port 22
ufw deny 22
ufw allow 80
ufw allow 443
ufw allow 5443
ufw enable
</pre>

其他參考範例:

<pre class="brush: jscript">
sudo -s
ufw status
ufw allow from 192.168.1.1
ufw allow from 2001:xxxx:d005::/24 to any port 22
ufw allow from 2001:288:6004:xx::/32 to any port 22
ufw deny 22
ufw allow from 2001:288:6004:xx::/32 to any port 3128
ufw allow from 2001:288:6004:xx::/32 to any port 3130
ufw deny 3128
ufw deny 3130
ufw allow 80
ufw allow 443
ufw allow 53
ufw enable
</pre>

ufw 刪除特定 rule
====

在 ufw enable 之後, 可以使用 ufw status numbered 列出 rules 順序編號, 然後再以:

ufw delete 編號

刪除特定編號的 rule 後, 例如: 

ufw delete 21

而編號 21 的 rule 為 ufw deny 3389, 即除了前面所允許的主機網址可以對伺服器 3389 port 連線外, 其餘一律禁止連線, 此地則將 ufw deny 3389 刪除, 接著以:

ufw allow from 2001:xxxx:d005::/24 to any port 3389 

納入允許 3389 port 連線的主機網址範圍後, 再加上:

<pre class="brush: jscript">
ufw deny 3389
ufw enable
</pre>

就等同額外在 port 3389 可連線的主機納入特定的電腦群之後, 再重新啟動防火牆.

Ubuntu update 與 upgrade
====

Ubuntu 各版次釋出後, 經常會有各種套件的更新與升級, 因此若要採手動 update 與 upgrade, 可以執行:

sudo apt update

sudo 是希望以 super user 的權限執行隨後的指令, 等同在 Windows 操作系統中以管理者模式執行指令的意思. 通常在牽涉操作系統內部套件安裝與設定修改時, 只能由管理員身分進行處理. 至於 apt 則為 Ubuntu 的套件管理工具, 可以用來安裝或移除套件. 而最後的 update 則是 apt 命令的一個 option, 表示要更新目前針對此一操作系統, 可以安裝的套件列表, 以及如何取得這些套件安裝的相關資訊.

完成 sudo apt update 之後, 就可以利用 sudo apt upgrade, 將所有已經安裝在操作系統中, 可升級的套件進行更新. 各套件更新升級後, 通常會留下一些目前版本沒有使用的舊檔案, 可以利用 sudo apt autoremove 加以移除.

Ubuntu 的遠端桌面
====

Ubuntu 安裝 Desktop 版本之後, 可以加裝 xrdp, 並且允許遠端主機對 port 3389 連線, 就可以從其他操作系統電腦上, 以 Remote Desktop client 進行遠端連線:

sudo apt install xrdp

在 Mac 操作系統上, 可以安裝 Microsoft Remote Desktop 套件對遠端的 Ubuntu 進行連線操控. 在 Ubuntu 則可以使用 Remmina 作為 Remote Desktop client.

