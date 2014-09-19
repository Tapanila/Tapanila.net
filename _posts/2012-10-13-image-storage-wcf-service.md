---
layout: post
title: Image storage WCF service
date: 2012-10-13 16:41
author: Teemu
comments: true
categories: [WCF, Windows Azure, Windows Azure, Windows Azure Blob, Windows Azure Storage, Windows Azure Websites]
---
This is one more advanced WCF service than other samples. Because it's meant to be used by Windows Phone and Windows 8 clients.

<!--more-->The main idea behind this service is that it can be used by anyone easily by supporting their own Windows Azure Storage account information.
This way you can easily store and retrieve your images without creating any Windows Azure back-end. You just need to create a own Windows Azure Storage account.

<p><script src="https://gist.github.com/3884638.js?file=IService1.cs"></script></p>
<p><script src="https://gist.github.com/3884641.js?file=Service1.svc.cs"></script></p>
<p><script src="https://gist.github.com/3884645.js?file=web.config"></script></p>

If you just want to use the service you can find it hosted <a href="http://tapanilaimage.azurewebsites.net/Service1.svc">here</a>.
