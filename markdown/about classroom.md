---
Title: 有關 Github Classroom
Date: 2022-09-03 11:00
Category: Github
Tags: Classroom
Slug: about-classroom
Author: mdecycu
---

這裡將收集與 Github Classroom 有關的資料內容. 

<!-- PELICAN_END_SUMMARY -->

Github Classroom
====

登入 Github 帳號, 並連線至 <https://classroom.github.com/> 後, 選擇 Sign in and Get Started, 就可以加入 Github Classroom: <https://github.com/education/classroom>. 授權讓 classroom 程式管理 organization 帳號下的所有倉儲, 其中最重要的功能就是, 可以由管理者管控是否 enable invite link, 讓取得連結的學員參與作業與專案倉儲管理, 並且可以透過 organization 中的 Member privileges 設定讓使用者建立 Github Pages, 但限制其刪除 organization 下作業倉儲的權限..

加入 Github classroom 後, 將跳出相關說明: A classroom is a space where you can create assignments, collaborate with teaching assistants, and invite students in a single course.

由於 GitHub Classroom uses organization accounts to manage permissions, administration, and security for classrooms. You can create a Classroom in any organization you own.

意即, 當 Github 使用者加入 Github Classroom 之後, 就可以透過該帳號下的 organization 來新增 assignments 或協同 project, 當該 orgainzation 的管理者透過 Github Classroom 設定 assignment 之後, 該 assignment 就會產生一組 invite link 網址, 且與管理者所選定的倉儲作為 template 之後, 任何 Github 用戶只要連結到該 assignment 對應的網址, 並且同意加入後, 就可以在該 assignment 權限設定下讓用戶對倉儲擁有管理權.

假設該作業倉儲名稱為 site, 且使用者帳號名稱為 scrum-2, 則納入該 assignment 後, 就會在 organization 名稱下建立一個名稱為 site-scrum-2 的倉儲, 而先前所使用的 template 若為 cmsite, 則該選定接受 assignment 的使用者就可以全權管理該作業倉儲. 一旦學員將倉儲設定 Github Pages 對應分支後, 該作業網址將為: https://organization_名稱.github.io/site-scrum-2

invite link 時效
----

當所有修課學員都參與指定作業後, 可以進入 assignment 設定, 取消 invite link.

學員作業倉儲權限
----

當課程中止, 由於學員僅具備管理作業倉儲改版與 Github Pages 設定權限, 因此可以永久保留該學員所繳交的作業倉儲內容.

