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
<ol>
	<li><a href="https://www.windowsazure.com/en-us/develop/net/">Download</a> and install Azure SDK</li>
	<li>Login to <a href="https://manage.windowsazure.com">Azure Dashboard</a></li>
	<li>Choose storage from left
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/Storage.png"><img class="alignnone size-medium wp-image-196" title="Storage" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_300,w_190/v1388360783/Storage_fhlxrd.png" alt="" width="190" height="300" /></a></li>
	<li> Click new from bottom left, choose Storage, Quick Create, type in your url and click Create Storage Account
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/CreateNewStorage.png"><img class="alignnone size-medium wp-image-197" title="CreateNewStorage" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_164,w_300/v1388360782/CreateNewStorage_ofixqj.png" alt="" width="300" height="164" /></a></li>
	<li>Open newly created Storage Account and choose Manage Keys from bottom
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/ManageKeys.png"><img class="alignnone size-medium wp-image-199" title="ManageKeys" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_29,w_300/v1388360781/ManageKeys_jnxpin.png" alt="" width="300" height="29" /></a></li>
	<li> Copy Primary Access Key and close window. We are going to use that key later
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/PrimaryAcccessKey.png"><img class="alignnone size-medium wp-image-200" title="PrimaryAcccessKey" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_255,w_300/v1388360780/PrimaryAcccessKey_t3xcfk.png" alt="" width="300" height="255" /></a></li>
	<li>Choose websites from left
<a href="http://tapanila.net/wp-content/uploads/2012/07/AzureWebsites1.png"><img title="AzureWebsites" src="http://tapanila.net/wp-content/uploads/2012/07/AzureWebsites1.png" alt="" width="198" height="226" /></a></li>
	<li>Click new from bottom left, choose Quick Create, type in your url and click Create Web Site
<a href="http://tapanila.net/wp-content/uploads/2012/07/AzureWebsitesQuickCreate1.png"><img title="AzureWebsitesQuickCreate" src="http://tapanila.net/wp-content/uploads/2012/07/AzureWebsitesQuickCreate1-300x162.png" alt="" width="300" height="162" /></a></li>
	<li>After that your website is up and running</li>
	<li>Now open your website settings from Azure Dashboard by clicking the name of it
<a href="http://tapanila.net/wp-content/uploads/2012/07/ChoosingWebsite.png"><img title="ChoosingWebsite" src="http://tapanila.net/wp-content/uploads/2012/07/ChoosingWebsite-300x10.png" alt="" width="300" height="10" /></a></li>
	<li> You can use either TFS, Github, FTP or Visual Studio to deploy the website. I chose VS
<a href="http://tapanila.net/wp-content/uploads/2012/07/DowndloadPublishProfile.png"><img title="DowndloadPublishProfile" src="http://tapanila.net/wp-content/uploads/2012/07/DowndloadPublishProfile-217x300.png" alt="" width="217" height="300" /></a></li>
	<li> Now create your new WCF Application project on Visual Studio. Remember tho choose .NET Framework 4
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/07/CreateNewWCFServiceProject1.png"><img class="alignnone size-medium wp-image-98" title="CreateNewWCFServiceProject" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_207,w_300/v1388360870/CreateNewWCFServiceProject1_ifqzip.png" alt="" width="300" height="207" /></a></li>
	<li>Right click your project and choose add reference
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/AddReference.png"><img class="alignnone size-medium wp-image-202" title="AddReference" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_300,w_169/v1388360716/AddReference_r1wvzq.png" alt="" width="169" height="300" /></a></li>
	<li>Search for Azure and check Azure.StorageClient and click okay
<a href="http://tapanila.azurewebsites.net/wp-content/uploads/2012/08/ManageReferencesAzureStorage.png"><img class="alignnone size-medium wp-image-203" title="ManageReferencesAzureStorage" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_225,w_300/v1388360715/ManageReferencesAzureStorage_eyysez.png" alt="" width="300" height="225" /></a></li>
	<li>Edit IService1.cs</li>
<p><script src="https://gist.github.com/3270985.js"> </script></p>
        <li>Edit Service1.svc</li>
<p><script src="https://gist.github.com/3271026.js"> </script></p>
	<li>Right click your project and choose publish
<a href="http://tapanila.net/wp-content/uploads/2012/07/PublishingWCFService.png"><img class="alignnone size-medium wp-image-99" title="PublishingWCFService" src="https://res\.cloudinary\.com/tapanila-net/image/upload/h_300,w_225/v1388360869/PublishingWCFService_tqlvsn.png" alt="" width="225" height="300" /></a></li>
	<li> Choose import and then browse to the file you downloaded from Azure Dashboard
<a href="http://tapanila.net/wp-content/uploads/2012/07/ImportPublishProfile.png"><img title="ImportPublishProfile" src="http://tapanila.net/wp-content/uploads/2012/07/ImportPublishProfile-300x233.png" alt="" width="300" height="233" /></a></li>
	<li>Now just click publish
<a href="http://tapanila.net/wp-content/uploads/2012/07/PublishWebApplication.png"><img title="PublishWebApplication" src="http://tapanila.net/wp-content/uploads/2012/07/PublishWebApplication-300x232.png" alt="" width="300" height="232" /></a></li>
	<li>Enjoy of your new service
<a href="http://tapanila.net/wp-content/uploads/2012/07/PublishedWCFService.png"><img title="PublishedWCFService" src="http://tapanila.net/wp-content/uploads/2012/07/PublishedWCFService-300x187.png" alt="" width="300" height="187" /></a></li>
</ol>
