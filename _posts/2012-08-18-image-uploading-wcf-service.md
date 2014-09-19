---
layout: post
title: Image uploading WCF service
date: 2012-08-18 19:15
author: Teemu
comments: true
categories: [Visual Studio 2012 RC, WCF, Windows Azure, Windows Azure Websites]
---
WCF service that saves and retrieves images is simple to do. But there's few tricks that you should know.
<!--more-->

At start create a new WCF service in .net 4.0 and add Azure reference to it. You can follow the guide at <a title="Publishing WCF service that uses Blob Storage into Windows Azure Websites" href="http://www.tapanila.net/publishing-wcf-service-that-uses-blob-storage-into-windows-azure-websites/">here</a>.

Now instead of saving text we are going to save Pictures.
So lets start by creating two new functions. They will be SavePicture and RetrievePicture.
After that you need to edit the Web.config file.
<p><script type="text/javascript" src="https://gist.github.com/3388018.js?file=gistfile1.cs"></script></p>
<p><script type="text/javascript" src="https://gist.github.com/3388021.js?file=gistfile1.cs"></script></p>
<p><script src="https://gist.github.com/3388028.js?file=gistfile1.xml"></script></p>
So the secret lies on editing the Web.config file.
After that you can just publish it into Azure websites and use it.
You can find the published service <a href="http://tapanilablog.azurewebsites.net/Service1.svc">here</a>.
