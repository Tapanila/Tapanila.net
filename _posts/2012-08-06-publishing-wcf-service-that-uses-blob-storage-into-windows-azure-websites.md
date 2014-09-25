---
layout: post
title: Publishing WCF service that uses Blob Storage into Windows Azure Websites
date: 2012-08-06 10:00
author: Teemu
comments: true
categories: [Visual Studio 2012 RC, WCF, Windows Azure, Windows Azure, Windows Azure Blob, Windows Azure Websites]
---
You can publish WCF Services into Windows Azure Websites.
Also you can access all of the Azure resources from there too.
You just need to add reference to Azure manually because by default the WCF application is not an Azure project.

<!--more-->


1. [Download](https://www.windowsazure.com/en-us/develop/net/) and install Azure SDK
2. Login to [Azure Dashboard](https://manage.windowsazure.com)
3. Choose storage from left
   
   ![Storage](https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_190/v1388360783/Storage_fhlxrd.png)
   
4. Click new from bottom left, choose Storage, Quick Create, type in your url and click Create Storage Account
   
   ![Create new storage](https://res.cloudinary.com/tapanila-net/image/upload/h_164,w_300/v1388360782/CreateNewStorage_ofixqj.png)
   
5. Open newly created Storage Account and choose Manage Keys from bottom

   ![Manage Keys](https://res.cloudinary.com/tapanila-net/image/upload/h_29,w_300/v1388360781/ManageKeys_jnxpin.png)
   
6. Copy Primary Access Key and close window. We are going to use that key later

   ![Primary Access Key](https://res.cloudinary.com/tapanila-net/image/upload/h_255,w_300/v1388360780/PrimaryAcccessKey_t3xcfk.png)
   
7. Choose websites from left

   ![Azure Websites](https://res.cloudinary.com/tapanila-net/image/upload/c_scale,h_300/v1388361009/AzureWebsites1_lsi2oi.png)
  
8. Click new from bottom left, choose Quick Create, type in your url and click Create Web Site

   ![Quick create azure website](http://res.cloudinary.com/tapanila-net/image/upload/c_scale,w_300/v1388361006/AzureWebsitesQuickCreate1_mlenio.png)

9. After that your website is up and running
10. Now open your website settings from Azure Dashboard by clicking the name of it

    ![Choosing website](http://res.cloudinary.com/tapanila-net/image/upload/c_scale,w_300/v1388361005/ChoosingWebsite_fmbrf0.png)
   
11. You can use either TFS, Github, FTP or Visual Studio to deploy the website. I chose VS

    ![Download publish profile](http://res.cloudinary.com/tapanila-net/image/upload/c_scale,w_300/v1388361003/DowndloadPublishProfile_xfbdge.png)

12. Now create your new WCF Application project on Visual Studio. Remember tho choose .NET Framework 4

    ![Create new wcf service](https://res.cloudinary.com/tapanila-net/image/upload/h_207,w_300/v1388360870/CreateNewWCFServiceProject1_ifqzip.png)

13. Right click your project and choose add reference

    ![Add reference](https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_169/v1388360716/AddReference_r1wvzq.png)

14. Search for Azure and check Azure.StorageClient and click okay

    ![Add reference to Azure Storage](https://res.cloudinary.com/tapanila-net/image/upload/h_225,w_300/v1388360715/ManageReferencesAzureStorage_eyysez.png)

15. Edit IService1.cs

    {% gist 3270985 %}
   
16. Edit Service1.svc

    {% gist 3271026 %}

17. Right click your project and choose publish
   
    ![Publish WCF service](https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_225/v1388360869/PublishingWCFService_tqlvsn.png)

18. Choose import and then browse to the file you downloaded from Azure Dashboard

    ![Import publish profile](http://res.cloudinary.com/tapanila-net/image/upload/c_scale,w_300/v1388360877/ImportPublishProfile_euhmym.png)

19. Now just click publish

    ![Publish web application](http://res.cloudinary.com/tapanila-net/image/upload/c_scale,w_300/v1388360874/PublishWebApplication_a5ool5.png)

20. Enjoy of your new service

    ![Published WCF service](http://res.cloudinary.com/tapanila-net/image/upload/c_scale,w_300/v1388360867/PublishedWCFService_l8gvb6.png)
