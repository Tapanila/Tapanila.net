---
layout: post
title: Using Windows Azure Tables to store and retrieve data
date: 2012-08-23 17:00
author: Teemu
comments: true
categories: [Nuget, Visual Studio 2012 RC, WCF, Windows Azure, Windows Azure, Windows Azure Storage]
---
Windows Azure Tables is very lightweight opinion to store, retrieve and queue entities.
Fast to setup and very easy to use.

<!--more-->

First of all you need to log into <a href="https://manage.windowsazure.com">Azure management portal</a> and create a new storage or use existing.
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360704/CreateNewWindowsAzureStorage_jbaqin.png"><img class="alignnone size-medium wp-image-511" title="CreateNewWindowsAzureStorage" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_202,w_300/v1388360704/CreateNewWindowsAzureStorage_jbaqin.png" alt="" width="300" height="202" /></a>

Create a new WCF service in Visual Studio 2012. Remember to choose .net 4.0 if you plan to publish it into Windows Azure Websites.
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360870/CreateNewWCFServiceProject1_ifqzip.png"><img class="alignnone size-medium wp-image-98" title="CreateNewWCFServiceProject" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_207,w_300/v1388360870/CreateNewWCFServiceProject1_ifqzip.png" alt="" width="300" height="207" /></a>

Right click on references and choose manage NuGet packages.
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360855/OpenNuGet_xomu4s.png"><img class="alignnone size-medium wp-image-146" title="OpenNuGet" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_167,w_300/v1388360855/OpenNuGet_xomu4s.png" alt="" width="300" height="167" /></a>

Search for Azure storage and install it.
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360702/WindowsAzureStorageNuGetInstall_wt7qxy.png"><img class="alignnone size-medium wp-image-521" title="WindowsAzureStorageNuGetInstall" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_200,w_300/v1388360702/WindowsAzureStorageNuGetInstall_wt7qxy.png" alt="" width="300" height="200" /></a>

Now edit IService1.cs and IService1.svc
<p><script src="https://gist.github.com/3436802.js?file=gistfile1.cs"></script></p>
<p><script src="https://gist.github.com/3436848.js?file=gistfile1.cs"></script></p>
