---
Title: 有關網路
Date: 2022-09-18 11:00
Category: Network
Tags: cad2022, cp2022
Slug: 2022_fall_about_network
Author: mdecycu
---

簡要說明 2022 Fall 在綜一館八樓的電腦網路使用與觀察.

<!-- PELICAN_END_SUMMARY -->

實際觀察
====

註: 以下的相關下載連結, 必須登入學校下載中心主機, 或者使用校內網路才能下載. 而各種教育版套件則必須透過校內 VPN 登入後, 才可進行認證.

為了方便, 接下來將要從學校下載目前可以取得的 1909 64 位元 [Windows 10操作系統], 並且利用 Virtualbox 安裝為虛擬機. 因為這個教育版的 Windows 需要每半年進行認證更新, 因此還要同時下載 [windows_kms.bat]. 另外若要配合仍廣為流行的 MS Office, 可以再下載 [Office 2016] 版, 以及認證用的 [Office_2016_KMS.bat]. 

下載 Windows 10 與 Office iso 畫面:

<img src="./../images/download_windows_iso.png" width="300"></img>

<img src="./../images/download_office_iso.png" width="300"></img>

[Windows 10操作系統]: https://software.nfu.edu.tw/Windows/tw/Win10_1909_64BIT_CH.ISO
[windows_kms.bat]: https://software.nfu.edu.tw/KMS/windows_kms.bat
[Office 2016]: https://software.nfu.edu.tw/Office/tw/Office_Pro_Plus_2016_64Ch.iso
[Office_2016_KMS.bat]: https://software.nfu.edu.tw/KMS/Office_2016_KMS.bat
[sdelete]: https://learn.microsoft.com/zh-tw/sysinternals/downloads/sdelete
[Win10_2022_20H2.7z]: https://gmnfuedutw-my.sharepoint.com/:u:/g/personal/yen_gm_nfu_edu_tw/ETLU-Pa-1R9AhLfmQy3MShkBs6MIZoJEiroz3XdT9Q2W7Q?e=IdqClG
[Win10_2022_20H2.7z @nfu]: https://nfuedu-my.sharepoint.com/:u:/g/personal/yen_nfu_edu_tw/EWqlT9jgaBhMtSotCbtuU3IBr_65gj1L0pE5NzVTwUeT5w?e=pEjopq

Virtualbox 安裝
----

接下來利用 Virtualbox 先安裝 Windows 10, 再安裝 Office, 最終可以得到 [Win10_2022_20H2.7z] (for @gm users) ([Win10_2022_20H2.7z @nfu]) 檔案.

<img src="./../images/virtualbox_install_win10.png" width="300"></img>

同一個 Virtualbox 應用程式下的虛擬硬碟檔案, 其 uuid 不可相同, 因此若直接從某一虛擬檔案複製在同一台 Virtualbox 進行設定之前, 必須更改其中一個檔案的 uuid.

更改硬碟檔案的 uuid:

vboxmanage internalcommands sethduuid win10_21H2.vmdk

查詢虛擬硬碟檔案的 uuid:

vboxmanage.exe" showhdinfo win10_2022.vdi

刪除虛擬硬碟中的無用檔案 (通常已經在虛擬主機中, 將硬碟重組並刪除無用檔案後, 以 [sdelete] c: -z 將系統沒有使用的磁區, 逐一寫入 zero):

vboxmanage.exe modifymedium --compact disk win10_2022.vdi 

這裡必須特別注意的是: 目前 vboxmanage 只能對 .vdi 執行 compact, 不適用於 .vmdk 虛擬機檔案.

NAT 上網
----

經過上述 Windows 10 虛擬主機安裝後, 得到 [Win10_2022_20H2.7z] (for @gm users) ([Win10_2022_20H2.7z @nfu]) 檔案, 可以在實體的 Windows 10 或 Ubuntu 操作系統中以 Virtualbox 

若要在同一台實體主機設定源自同一虛擬主機檔案的多台電腦, 可以更改硬碟檔案的 uuid:

vboxmanage internalcommands sethduuid win10_21H2.vdi

啟動 虛擬 Windows 10 之前, 查驗一下記憶體給定 4GB, 並且採用 NAT network 模式後開機. NAT 的網路設定就是讓虛擬機模擬以實體主機的網路卡作為 NAT 的對外通道, 讓虛擬機可以經由實體機的網路連線上網.

NAT 這時可以視為虛擬主機的防火牆, 外部電腦在無 NAT port mapping 的情況下, 無法直接連線到虛擬主機.

更改硬碟檔案的 uuid:

vboxmanage internalcommands sethduuid win10_21H2.vmdk

在使用 Windows 10 代理主機設定過程, 發現無法手動儲存 Proxy 設定時, 可以將 Proxy 設定寫入:

電腦\HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyServer 字串值中.

也可以透過 Windows 10 登錄檔案 (Registry) 進行設定, 以滑鼠左鍵雙點擊下列 manual_proxy_setting.reg 即可完成設定:

<pre class="brush: jscript'>
Windows Registry Editor Version 5.00
 
 [HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings]
 ; disable AutoDetect
"AutoDetect"=dword:00000000
"MigrateProxy"=dword:00000001
; enable Proxy
"ProxyEnable"=dword:00000001 
"ProxyHttp1.1"=dword:00000000 
"ProxyServer"="http://[2001:288:6004:17::42]:3128"
"ProxyOverride"="localhost;"
</pre>

NAT 內定使用 IPv4
----

當我們使用 Virtualbox Windows 10 虛擬主機, 利用 NAT 作為聯外網路設定時, default 只能使用 IPv4 網路協定.

假如要讓虛擬主機使用更有彈性的 NAT 網路機制, 可以從 Network 設定中轉用  NAT Network 設定, 首先在 Virtualbox Manager - File - Preferences - Network - NAT Networks 項目中新增一個 NATNetwork, 開啟 edit 編輯模式, 內部網段使用 10.0.2.0/24, 打勾 Support DHCP. 當虛擬主機關機後, 重新設定 Network 後重開後選用 NAT Network, 就可以使用此項設定.

因此, 假如同一台實體主機中有多台採 NAT 上網的虛擬主機, 就可以利用 NAT Networks 選擇各種內部網路協定與連線架構.

採用 NAT Network 設定的虛擬主機雖然也能透過 Port Forwarding 擔任伺服器, 但是只能與實體主機共用聯外的網路線, 假如要將虛擬主機當作 server, 且採實體網路線聯外, 可以將 Network 設為 Bridged Adapter.

