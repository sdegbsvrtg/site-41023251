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

Virtualbox 安裝
----

接下來利用 Virtualbox 先安裝 Windows 10, 再安裝 Office, 最終可以得到 [Windows 10 1909 vdi] 檔案.

<img src="./../images/virtualbox_install_win10.png" width="300"></img>

更改硬碟檔案的 uuid:

vboxmanage internalcommands sethduuid win10_21H2.vmdk

