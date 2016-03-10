---
layout: post
title: Azure Websites - Start for free and scale as you go
date: 2012-07-20 09:20
author: Teemu
comments: true
categories: [Visual Studio 2012 RC, Windows Azure, Windows Azure, Windows Azure Websites]
---
Azure Websites is very easy way to get started very fast on creating a website.
Azure subscriptions come with 10 free web sites on shared platform.
It's currently in a beta phase but atleast for me it has been working perfectly.
So here's a guide how to get started.

1.  Login to [Azure Dashboard](https://manage.windowsazure.com)
2.  Choose websites from left

    ![Azure Websites](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388361009/AzureWebsites1_lsi2oi.png)
3.  Click new from bottom left, choose Quick Create, type in your url and click Create Web Site

    ![Azure Websites Quick Create](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388361006/AzureWebsitesQuickCreate1_mlenio.png)
4.  After that your website is up and running
5.  Now open your website settings from Azure Dashboard by clicking the name of it

    ![Choosing Website](https://res.cloudinary.com/tapanila-net/image/upload/w_610,q_100/v1388361005/ChoosingWebsite_fmbrf0.png)
6.  You can use either TFS, Github, FTP or Visual Studio to deploy the website. I chose VS

    ![Download Publish Profile](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388361003/DowndloadPublishProfile_xfbdge.png)
7.  Now create your new website project on Visual Studio. Remember tho choose .NET Framework 4

    ![Create new ASP.net website](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388360876/CreateNewASPNETWebsite1_bbu0ot.png)
8.  Choose Internet Application

    ![ASP.net Internet Application](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388360880/ASPNETInternetApplication_zsency.png)
9.  Right click your project and choose publish

    ![Publishing Website](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388360878/PublishingWebsite_kta1y4.png)
10.  Choose import and then browse to the file you downloaded from Azure Dashboard

     ![Import Publish Profile](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388360877/ImportPublishProfile_euhmym.png)
11.  Now just click publish

     ![Publish Web Application](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388360874/PublishWebApplication_a5ool5.png)
12.  Enjoy of your cool website
     ![Publiushed web application](https://res.cloudinary.com/tapanila-net/image/upload/q_100,w_610/v1388360873/PublishedWebApplication_sbnscu.png)
