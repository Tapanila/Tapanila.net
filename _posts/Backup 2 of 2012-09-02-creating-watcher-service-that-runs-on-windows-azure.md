---
layout: post
title: Creating watcher service that runs on Windows Azure
date: 2012-09-02 18:39
author: Teemu
comments: true
categories: [SendGrid, SyndicationFeed, Visual Studio 2012 RC, WCF, Windows Azure, Windows Azure, Windows Azure Storage, Windows Azure Websites]
---
This post is about combining the stuff that I have recently wrote about and creating something nice.
<a title="Consuming rss feed with syndicationfeed" href="http://www.tapanila.net/consuming-rss-feed-with-syndicationfeed/">Consuming rss feed</a> + <a title="Using Windows Azure Tables to store and retrieve data" href="http://www.tapanila.net/using-windows-azure-tables-to-store-and-retrieve-data/">Using Windows Azure Tables to store and retrieve data</a> + <a title="Sending emails easily from your Azure application" href="http://www.tapanila.net/sending-emails-easily-from-your-azure-application/">Sending emails from your Windows Azure application</a> = Windows Phone 8 SDK watcher.

<!--more-->

This post contains a lot of code if you want more easier to follow blog posts just look those 3 from above. Everything that is done here is basically combing all 3 of those and then building a real service using them. The solution is WCF application for .net 4.0 and then published into Azure Websites.
Create a new WCF application (.net 4.0)
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360870/CreateNewWCFServiceProject1_ifqzip.png"><img class="alignnone size-full wp-image-98" title="CreateNewWCFServiceProject" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360870/CreateNewWCFServiceProject1_ifqzip.png" alt="" width="951" height="658" /></a>

Open NuGet Package manager
<a href="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360855/OpenNuGet_xomu4s.png"><img class="alignnone size-full wp-image-146" title="OpenNuGet" src="https://res\.cloudinary\.com/tapanila-net/image/upload/v1388360855/OpenNuGet_xomu4s.png" alt="" width="345" height="193" /></a>

Add references to these libraries: SendGrid and Windows Azure Storage.
Here's the code for Service1.scv.cs
<p><script src="https://gist.github.com/3599405.js?file=gistfile1.cs"></script></p>
Here's the code for Service1.cs
<p><script src="https://gist.github.com/3599461.js?file=gistfile1.cs"></script></p>
You can find the service from <a href="http://windowsphone8watcher.azurewebsites.net/WatcherService.svc">here</a> and start using it.
I will soon release a website that's hosted on Windows Azure which will be using this. It will offer this service to anyone who want to get email notification when Windows Phone 8 SDK is released.  <code></code>
