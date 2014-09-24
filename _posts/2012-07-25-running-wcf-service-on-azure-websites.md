---
layout: post
title: Running WCF service on Azure Websites
date: 2012-07-25 09:00
author: Teemu
comments: true
categories: [WCF, Windows Azure, Windows Azure, Windows Azure Websites]
---
Azure Websites is not only limited into running your normal websites.
You can also run WCF Services in Azure Websites.

<!--more-->
<ol>
	<li>Login to <a href="https://manage.windowsazure.com">Azure Dashboard</a></li>
	<li>Choose websites from left
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AzureWebsites1.png"><img title="AzureWebsites" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AzureWebsites1.png" alt="" width="198" height="226" /></a></li>
	<li>Click new from bottom left, choose Quick Create, type in your url and click Create Web Site
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AzureWebsitesQuickCreate1.png"><img title="AzureWebsitesQuickCreate" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/AzureWebsitesQuickCreate1-300x162.png" alt="" width="300" height="162" /></a></li>
	<li>After that your website is up and running</li>
	<li>Now open your website settings from Azure Dashboard by clicking the name of it
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/ChoosingWebsite.png"><img title="ChoosingWebsite" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/ChoosingWebsite-300x10.png" alt="" width="300" height="10" /></a></li>
	<li> You can use either TFS, Github, FTP or Visual Studio to deploy the website. I chose VS
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/DowndloadPublishProfile.png"><img title="DowndloadPublishProfile" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/DowndloadPublishProfile-217x300.png" alt="" width="217" height="300" /></a></li>
	<li> Now create your new WCF Application project on Visual Studio. Remember tho choose .NET Framework 4
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/CreateNewWCFServiceProject1.png"><img class="alignnone size-medium wp-image-98" title="CreateNewWCFServiceProject" src="https://res.cloudinary.com/tapanila-net/image/upload/h_207,w_300/v1388360870/CreateNewWCFServiceProject1_ifqzip.png" alt="" width="300" height="207" /></a></li>
	<li>Right click your project and choose publish
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/PublishingWCFService.png"><img class="alignnone size-medium wp-image-99" title="PublishingWCFService" src="https://res.cloudinary.com/tapanila-net/image/upload/h_300,w_225/v1388360869/PublishingWCFService_tqlvsn.png" alt="" width="225" height="300" /></a></li>
	<li> Choose import and then browse to the file you downloaded from Azure Dashboard
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/ImportPublishProfile.png"><img title="ImportPublishProfile" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/ImportPublishProfile-300x233.png" alt="" width="300" height="233" /></a></li>
	<li>Now just click publish
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/PublishWebApplication.png"><img title="PublishWebApplication" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/PublishWebApplication-300x232.png" alt="" width="300" height="232" /></a></li>
	<li>Enjoy of your new service
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/PublishedWCFService.png"><img title="PublishedWCFService" src="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/PublishedWCFService-300x187.png" alt="" width="300" height="187" /></a></li>
</ol>
