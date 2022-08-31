---
Title: Windows 常用指令
Date: 2022-09-01 11:00
Category: windows
Tags: batch, commands
Slug: useful-windows-commands
Author: mdecycu
---

根據使用情境將常用的 Windows 指令加以整理.

<!-- PELICAN_END_SUMMARY -->

密碼最長使用期限
====

Windows 10 [密碼最長使用期限] 內定為 42 天, 假如此一設定對使用者造成困擾, 可以從系統管理者執行的 cmd 中, 輸入 secpol.msc 開啟 [本機安全性設定], 開啟"帳戶原則"中的"密碼原則", 然後將"密碼最長使用期限"從內定的  42 天改為 0, 表示密碼永不過期.

[密碼最長使用期限]: https://docs.microsoft.com/zh-tw/windows/security/threat-protection/security-policy-settings/maximum-password-age
[本機安全性設定]: https://mitblog.pixnet.net/blog/post/40807765-%5Bwindows%5D-%E6%9C%AC%E6%A9%9F%E5%AE%89%E5%85%A8%E6%80%A7%E5%8E%9F%E5%89%87%28secpol.msc%29%E3%80%81%E7%BE%A4%E7%B5%84%E5%8E%9F%E5%89%87
