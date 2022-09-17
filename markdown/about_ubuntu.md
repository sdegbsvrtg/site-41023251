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

<pre class="brush: jscript">
lsb_release -a 
</pre>

重新啟動 squid:

<pre class="brush: jscript">
sudo /etc/init.d/squid restart
</pre>

以管理者身分執行指令:

<pre class="brush: jscript">
sudo -s 
</pre>

查驗 ufw 狀態:

<pre class="brush: jscript">
ufw status
</pre>

允許主機連線:

<pre class="brush: jscript">
ufw allow from your_ipv4_or_ipv6_address
</pre>

只允許 IPv6 群組電腦經由 port 22 連線, 拒絕其他電腦連線:

<pre class="brush: jscript">
ufw allow from 2001:288:6004:xx::/32 to any port 22
ufw deny 22
</pre>

令上述設定生效:

<pre class="brush: jscript">
ufw enable
</pre>

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
